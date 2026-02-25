# Shopify Theme Setup Guide

## Step 1: Create Shopify Store
1. Go to https://shopify.com
2. Start free trial
3. Store name: TyreFlow

## Step 2: Install Theme

### Option A: Use Dawn Theme (Free) + Custom CSS
1. Shopify Admin → Online Store → Themes
2. Click "Customize" on Dawn theme
3. Theme Settings → Custom CSS
4. Paste the CSS below:

```css
/* TyreFlow Orange/Black Theme Overrides */

:root {
  --color-primary: #FF6B35;
  --color-primary-hover: #E85A2D;
  --color-bg: #0A0A0A;
  --color-bg-light: #111111;
  --color-text: #FFFFFF;
  --color-text-muted: #888888;
}

body {
  background-color: var(--color-bg);
  color: var(--color-text);
  font-family: 'Inter', sans-serif;
}

.header {
  background: rgba(10, 10, 10, 0.95) !important;
  backdrop-filter: blur(20px);
  border-bottom: 1px solid rgba(255, 107, 53, 0.1);
}

.header__heading-logo {
  filter: brightness(0) invert(1);
}

.header__menu-item {
  color: var(--color-text-muted) !important;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  font-size: 14px;
}

.header__menu-item:hover {
  color: var(--color-primary) !important;
}

.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border: none !important;
  border-radius: 8px !important;
  padding: 16px 32px !important;
  font-weight: 600 !important;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  box-shadow: 0 8px 30px rgba(255, 107, 53, 0.4);
  transition: all 0.3s ease;
}

.button:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 40px rgba(255, 107, 53, 0.6);
}

.button--secondary {
  background: transparent !important;
  border: 2px solid #444 !important;
  color: var(--color-text) !important;
}

.button--secondary:hover {
  border-color: var(--color-primary) !important;
  color: var(--color-primary) !important;
}

.card {
  background: #1A1A1A !important;
  border: 1px solid #333 !important;
  border-radius: 16px !important;
  overflow: hidden;
}

.card:hover {
  border-color: var(--color-primary) !important;
  box-shadow: 0 20px 50px rgba(255, 107, 53, 0.2);
}

.price {
  color: var(--color-primary) !important;
  font-weight: 700;
}

.price-item--regular {
  color: var(--color-text-muted) !important;
}

h1, h2, h3, h4, h5, h6 {
  font-family: 'Space Grotesk', sans-serif;
  letter-spacing: -0.5px;
}

.gradient {
  background: linear-gradient(135deg, #FF6B35, #FF8C42);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.footer {
  background: var(--color-bg) !important;
  border-top: 1px solid #333;
}

.footer__content {
  color: var(--color-text-muted);
}

.badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: rgba(255, 107, 53, 0.1);
  border: 1px solid rgba(255, 107, 53, 0.3);
  padding: 8px 16px;
  border-radius: 100px;
  font-size: 12px;
  font-weight: 600;
  letter-spacing: 1px;
  text-transform: uppercase;
  color: var(--color-primary);
}
```

### Option B: Buy Premium Theme
Recommended themes for this aesthetic:
- **Motion** by Archetype ($350) - Great animations
- **Prestige** by Maestrooo ($180) - Luxury feel
- **Impulse** by Archetype ($350) - Modern, bold

## Step 3: Add Google Fonts

1. Theme Settings → Custom Code
2. Add to `<head>`:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">
```

3. Add CSS variable for fonts:

```css
body {
  font-family: 'Inter', sans-serif;
}

h1, h2, h3, h4, h5, h6 {
  font-family: 'Space Grotesk', sans-serif;
}
```

## Step 4: Create Homepage Sections

### Hero Section
- Full-width banner
- Background: Black with orange gradient overlay
- Text: "Ride Faster. Ride Further."
- CTA: "Shop Collection" (gradient orange button)

### Features Grid (6 cards)
1. ⚡ Speed Optimized
2. 🛡️ Puncture Protection  
3. 🌧️ All-Weather Grip
4. ♻️ Eco-Friendly
5. 🏆 Pro Tested
6. 📦 Fast Shipping

### Product Grid
- 4 featured products
- Categories: Road, Mountain, Gravel, Urban

### Newsletter CTA
- "Ready to Upgrade Your Ride?"
- Email signup form

## Step 5: Product Page Template

### Product Images
- Black background product photos
- Orange accent lighting
- 360° spin if possible

### Product Description Layout
```
[Product Title] - [Price]
⭐⭐⭐⭐⭐ (Reviews)

[Short description]

Features:
• Bullet point 1
• Bullet point 2
• Bullet point 3

[Add to Cart Button]
[Buy It Now Button]

---

Description
Specifications
Reviews
Shipping
```

### Color Swatches
- Show tyre colors if applicable
- Use circular swatches with hover effect

## Step 6: Collection Pages

### Filter Sidebar
- Category (Road, MTB, Gravel, Urban)
- Size (700c, 29", 27.5", 26")
- Width (23mm, 25mm, 28mm, etc.)
- Price Range
- Brand

### Product Cards
- Image hover: zoom effect
- Quick view popup
- Price with compare-at price strikethrough
- "Sale" badge in orange

## Step 7: Cart & Checkout

### Cart Drawer/Popup
- Slide out from right
- Dark background
- Orange "Checkout" button
- Free shipping progress bar

### Checkout Customization
- Logo at top (white version)
- Order summary with product images
- Trust badges (secure checkout icons)

## Step 8: Apps to Install

### Free
- **Shopify Email** - Email marketing
- **Shopify Inbox** - Live chat
- **Product Reviews** - Customer reviews

### Paid (Optional)
- **Klaviyo** ($20/mo) - Advanced email flows
- **Loox** ($9.99/mo) - Photo reviews
- **ReConvert** ($7.99/mo) - Post-purchase upsells
- **Instafeed** ($6/mo) - Instagram feed

## Step 9: Essential Pages

Create these pages:
- About Us
- Contact
- Shipping & Returns
- Size Guide
- FAQ
- Privacy Policy
- Terms of Service

## Step 10: SEO Setup

### Meta Title Template
`{{ product.title }} - Premium Bike Tyres | TyreFlow`

### Meta Description
"Premium bike tyres for every rider. Speed optimized, puncture protected, all-weather grip. Free shipping Australia-wide on orders over $100."

### Keywords
- Bike tyres Australia
- Road bike tyres
- Mountain bike tyres
- Premium bicycle tyres
- Cycling accessories

## Step 11: Analytics

1. Connect Google Analytics 4
2. Set up Facebook Pixel
3. Enable Shopify Analytics

## Step 12: Launch Checklist

- [ ] All products uploaded with images
- [ ] Payment gateway connected (Shopify Payments)
- [ ] Shipping rates configured
- [ ] Tax settings for Australia
- [ ] Domain connected (or .myshopify.com)
- [ ] Email notifications customized
- [ ] Test order placed
- [ ] Mobile responsive checked
- [ ] Speed optimized (compress images)

## Support

Shopify Help: https://help.shopify.com
Theme Documentation: Check your theme's docs
Community: https://community.shopify.com
