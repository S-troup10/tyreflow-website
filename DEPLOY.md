# Deployment Instructions for TyreFlow Website

## Option 1: GitHub Pages (Recommended)

### Step 1: Create GitHub Repository
1. Go to https://github.com/new
2. Name: `tyreflow-website`
3. Make it Public
4. Click "Create repository"

### Step 2: Push Code
```bash
git remote add origin https://github.com/YOURUSERNAME/tyreflow-website.git
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to repository Settings
2. Click "Pages" in left sidebar
3. Source: Deploy from a branch
4. Branch: main / root
5. Click Save
6. Wait 2-3 minutes for deployment

### Step 4: Your Site is Live!
URL: `https://YOURUSERNAME.github.io/tyreflow-website`

## Option 2: Custom Domain

1. Add your domain in GitHub Pages settings
2. Create a `CNAME` file with your domain
3. Configure DNS A records to point to GitHub Pages IPs

## Option 3: Netlify (Even Easier)

1. Go to https://app.netlify.com/drop
2. Drag and drop the tyreflow-website folder
3. Site is live instantly!

## Color Reference

| Color | Hex | Usage |
|-------|-----|-------|
| Orange Primary | #FF6B35 | CTAs, accents, highlights |
| Orange Glow | #FF8C42 | Gradients, glows |
| Black | #0A0A0A | Background |
| Dark Gray | #1A1A1A | Cards, sections |
| White | #FFFFFF | Text |

## Shopify Store Link

Update the `href` in all buttons that link to:
`https://tyreflow.myshopify.com`

Change this to your actual Shopify store URL.
