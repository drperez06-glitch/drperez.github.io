param(
    [int]$Port = 8000
)

$basePath = Get-Location
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")

Write-Host "Starting web server on http://localhost:$Port/" -ForegroundColor Green
Write-Host "Serving files from: $basePath" -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop the server`n" -ForegroundColor Yellow

$listener.Start()

while ($true) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response

    $path = $request.Url.LocalPath
    if ($path -eq "/") { $path = "/index.html" }

    $filePath = Join-Path $basePath $path.TrimStart('/')
    
    try {
        if (Test-Path $filePath -PathType Leaf) {
            $file = Get-Item $filePath
            $content = [System.IO.File]::ReadAllBytes($filePath)
            
            # Set correct content type
            $contentType = "text/html"
            if ($filePath -match '\.css$') { $contentType = "text/css" }
            elseif ($filePath -match '\.js$') { $contentType = "application/javascript" }
            elseif ($filePath -match '\.png$') { $contentType = "image/png" }
            elseif ($filePath -match '\.jpg|\.jpeg$') { $contentType = "image/jpeg" }
            elseif ($filePath -match '\.gif$') { $contentType = "image/gif" }
            elseif ($filePath -match '\.svg$') { $contentType = "image/svg+xml" }
            elseif ($filePath -match '\.json$') { $contentType = "application/json" }
            
            $response.ContentType = $contentType
            $response.ContentLength64 = $content.Length
            $response.OutputStream.Write($content, 0, $content.Length)
            $response.StatusCode = 200
        }
        else {
            # Try 404.html first, then default 404 response
            $notFoundPath = Join-Path $basePath "404.html"
            if (Test-Path $notFoundPath) {
                $content = [System.IO.File]::ReadAllBytes($notFoundPath)
                $response.ContentType = "text/html"
                $response.ContentLength64 = $content.Length
                $response.OutputStream.Write($content, 0, $content.Length)
            }
            else {
                $message = "404 - File not found"
                $bytes = [System.Text.Encoding]::UTF8.GetBytes($message)
                $response.ContentType = "text/plain"
                $response.ContentLength64 = $bytes.Length
                $response.OutputStream.Write($bytes, 0, $bytes.Length)
            }
            $response.StatusCode = 404
        }
    }
    catch {
        Write-Host "Error: $_" -ForegroundColor Red
        $response.StatusCode = 500
    }
    finally {
        $response.OutputStream.Close()
    }
    
    Write-Host "$($request.HttpMethod) $($request.Url.LocalPath) - $($response.StatusCode)" -ForegroundColor Cyan
}

$listener.Stop()
$listener.Close()
