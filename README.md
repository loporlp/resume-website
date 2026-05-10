# Resume Website

[![Deploy to GitHub Pages](https://github.com/USERNAME/REPO/actions/workflows/deploy.yml/badge.svg)](https://github.com/USERNAME/REPO/actions/workflows/deploy.yml)

A lightweight, self-hostable resume website built with Astro and Tailwind CSS.

**Live Site:** https://yourdomain.com

## Quick Start

```bash
npm install
npm run dev
```

Visit http://localhost:4321

## Deployment

This site automatically deploys to GitHub Pages when you push to the main branch.

### Initial Setup

1. **Update Configuration Files**

   Replace placeholder values in:
   - `public/CNAME` - Your apex domain (e.g., `example.com`)
   - `astro.config.mjs` - Update `site` URL
   - `README.md` - Update badge URLs and live site link

2. **Create GitHub Repository**

   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/USERNAME/REPO.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages**

   - Go to repository Settings > Pages
   - Set Source to: **GitHub Actions**

4. **Configure DNS at Your Domain Registrar**

   Add these A records for your apex domain:

   ```
   Type   Name   Value               TTL
   A      @      185.199.108.153     3600
   A      @      185.199.109.153     3600
   A      @      185.199.110.153     3600
   A      @      185.199.111.153     3600
   ```

   Optional - Add www subdomain:

   ```
   Type    Name   Value                        TTL
   CNAME   www    USERNAME.github.io.         3600
   ```

5. **Set Custom Domain in GitHub**

   - Go to Settings > Pages > Custom domain
   - Enter your domain (e.g., `example.com`)
   - Click Save and wait for DNS check
   - Enable "Enforce HTTPS" once verified

### Automatic Deployments

Every push to `main` triggers automatic deployment via GitHub Actions. Monitor progress in the Actions tab.

## Project Structure

```
src/
├── layouts/Layout.astro     # Base HTML layout
├── pages/index.astro        # Main resume page (edit content here)
├── components/
│   ├── Header.astro         # Name, title, contact info, PDF download
│   ├── Section.astro        # Reusable section wrapper
│   ├── Experience.astro     # Work experience entries
│   ├── Education.astro      # Education entries
│   └── Skills.astro         # Skills display with categories
└── styles/global.css        # Tailwind imports + custom styles

public/
├── typstResume.pdf          # Downloadable PDF version
└── CNAME                    # Custom domain configuration
```

## Commands

- `npm run dev` - Start development server at http://localhost:4321
- `npm run build` - Generate static files in `dist/`
- `npm run preview` - Preview production build locally

## Customization

Edit `src/pages/index.astro` to update resume content. Components accept props for various resume sections.

See `CLAUDE.md` for detailed component documentation.

## License

MIT
