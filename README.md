# Dr. Perez - Personal Website

A clean, fast, static HTML-based personal website built with vanilla HTML5, CSS3, and minimal JavaScript.

**Live Site:** [drperez.github.io](https://drperez.github.io)

---

## Features

- **Responsive Design** – Mobile-first, works on all screen sizes
- **Fast Performance** – No frameworks; pure HTML/CSS/JS with optimized assets
- **Accessible** – WCAG 2.1 AA compliant
- **SEO-Ready** – Meta tags, sitemap, structured data (JSON-LD)
- **Easy to Maintain** – Hand-authored HTML, no build step required

---

## Project Structure

```
drperez.github.io/
├── index.html          # Home page
├── about.html          # About / biography
├── projects.html       # Portfolio / projects
├── resume.html         # Resume / CV summary
├── contact.html        # Contact form and links
├── 404.html            # Error page
├── css/
│   └── style.css       # Main stylesheet
├── js/                 # JavaScript files (minimal)
├── images/             # Images, photos, project screenshots
├── blog/               # Blog section (optional)
├── sitemap.xml         # XML sitemap for SEO
├── robots.txt          # Robot directives
├── PRD.txt             # Product Requirements Document
└── server.ps1          # Local development server (PowerShell)
```

---

## Pages

| Page | Purpose |
|------|---------|
| **Home** (`index.html`) | Hero intro, featured projects, CTAs |
| **About** (`about.html`) | Bio, skills, experience timeline |
| **Projects** (`projects.html`) | Portfolio grid with 6+ projects |
| **Resume** (`resume.html`) | CV summary and downloadable PDF |
| **Contact** (`contact.html`) | Contact methods and form |
| **404** (`404.html`) | 404 error page |

---

## Getting Started

### Local Development

#### With Python 3:
```bash
cd drperez.github.io
python -m http.server 8000
```

#### With Node.js (http-server):
```bash
npx http-server -p 8000
```

#### With PowerShell (no dependencies):
```powershell
cd drperez.github.io
powershell -ExecutionPolicy Bypass -File server.ps1
```

Then visit **http://localhost:8000** in your browser.

---

## Setting Up GitHub Pages

### Step 1: Create Repository on GitHub

1. Go to [github.com/new](https://github.com/new)
2. Enter repository name: **drperez.github.io**
3. Choose "Public"
4. Click "Create Repository"

### Step 2: Push Code to GitHub

If **Git is not installed**, install it first:
- **Windows**: [git-scm.com](https://git-scm.com)
- **Mac**: `brew install git`
- **Linux**: `sudo apt-get install git`

Then run these commands in PowerShell/Terminal:

```bash
cd "c:\Users\drper\OneDrive\Documents\drperez.github.io"

# Initialize and configure git
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Add files and push
git add .
git commit -m "Initial commit: personal website"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/drperez.github.io.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your actual GitHub username.

### Step 3: Enable GitHub Pages

1. Go to repository **Settings** → **Pages**
2. Under "Source", select **Deploy from a branch**
3. Select **main** branch
4. Save

Your site will be live at **https://drperez.github.io** (may take 1-2 minutes to deploy).

---

## Customizing Content

### Update Home Page
Edit `index.html` to:
- Change name from "Dr. Perez" to your name
- Update hero section intro
- Replace featured project cards with your projects

### Update About Page
Edit `about.html` to:
- Add your bio in the "About Me" section
- Update skills sections
- Modify experience timeline

### Add Projects
Edit `projects.html`:
- Add/remove project cards
- Update project titles, descriptions, tech tags
- Add links to live demos and GitHub repos

### Update Resume
Edit `resume.html` and create `resume.pdf`:
- Add your experience, education, skills
- Download as PDF and save to root directory

### Update Contact Info
Edit `contact.html`:
- Add your email, phone, location
- Update social media links (GitHub, LinkedIn, Twitter)
- Configure form endpoint (Formspree, Netlify Forms, etc.)

### Add Profile Image
1. Save your photo as `images/avatar.jpg` (200+ px, optimized)
2. Image is referenced in `index.html` and can be used in other pages

---

## Performance

### Lighthouse Scores
Current targets:
- **Performance:** 95+
- **Accessibility:** 95+
- **Best Practices:** 95+
- **SEO:** 95+

Test with [PageSpeed Insights](https://pagespeed.web.dev/)

### Image Optimization
- Compress with [TinyPNG](https://tinypng.com) or [Squoosh](https://squoosh.app)
- Use WebP format with JPEG fallback
- Max width: 1200px
- Target size: < 100KB per image

---

## SEO

### Already Configured
- ✅ Semantic HTML5
- ✅ Meta descriptions on each page
- ✅ Open Graph / Twitter Card tags
- ✅ Sitemap.xml
- ✅ robots.txt

### To Improve
1. Update meta descriptions with your info
2. Submit sitemap to [Google Search Console](https://search.google.com/search-console)
3. Add social links to improve backlinks
4. Write blog posts and link back

---

## Accessibility

### Tested For
- WCAG 2.1 AA compliance
- Keyboard navigation
- Screen reader support
- Color contrast (AA standard)

### Test Tools
- [WAVE Browser Extension](https://wave.webaim.org/extension/)
- [axe DevTools](https://www.deque.com/axe/devtools/)
- [Lighthouse](https://developers.google.com/web/tools/lighthouse)

---

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (11+)
- Edge (79+)
- Chrome Android
- Safari iOS

---

## Deployment

### GitHub Pages (Recommended)
- Free hosting
- Automatic HTTPS
- Auto-deploys on `git push`
- Works with custom domain

### Alternative Hosting
- [Netlify](https://netlify.com) – Free tier available
- [Vercel](https://vercel.com) – Free tier available
- Any static host works (no server-side code)

---

## Maintenance

### Regular Updates
- Review and update resume quarterly
- Add new projects as completed
- Update skills as you learn new technologies
- Write blog posts (optional)

### Analytics
- Consider adding [Plausible](https://plausible.io) or [Fathom](https://usefathom.com) for privacy-friendly analytics
- Monitor traffic and user behavior

---

## PRD & Documentation

See [PRD.txt](PRD.txt) for complete Product Requirements Document including:
- Project objectives and success metrics
- Feature roadmap (MVP + Phase 2+)
- Technical specifications
- Acceptance criteria and timeline

---

## License

© 2026 Dr. Perez. All rights reserved.

---

## Questions?

- Check [GitHub Pages Docs](https://docs.github.com/en/pages)
- Review [MDN Web Docs](https://developer.mozilla.org)
- Explore [Web.dev](https://web.dev) for best practices
