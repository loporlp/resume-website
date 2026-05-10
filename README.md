# Resume Website

Personal resume site built with Astro and Tailwind CSS. Deploys to GitHub Pages on push to main.

## Setup

```bash
npm install
npm run dev
```

Runs at http://localhost:4321

## Deployment

Pushes to `main` automatically deploy via GitHub Actions.

### First-time setup

1. Update `public/CNAME` with your domain and `astro.config.mjs` with the site URL
2. In repo Settings > Pages, set source to **GitHub Actions**
3. Add DNS A records at your registrar pointing to GitHub Pages IPs:
   ```
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```
4. Set your custom domain under Settings > Pages and enable HTTPS

## Editing content

Update `src/pages/index.astro` — that's where all the resume data lives.

## Commands

| Command | Description |
|---|---|
| `npm run dev` | Dev server at localhost:4321 |
| `npm run build` | Build to `dist/` |
| `npm run preview` | Preview production build |
