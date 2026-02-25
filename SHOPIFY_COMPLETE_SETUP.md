# TYREFLOW SHOPIFY SETUP - COMPLETE THEME CODE
# Paste this into your Shopify store

## Step 1: Create Store (2 minutes)
1. Go to: https://shopify.com/free-trial
2. Email: simontroup27@gmail.com
3. Password: (create one)
4. Store name: **tyreflow**
5. Answer setup questions (skip optional steps)

## Step 2: Install Theme
1. Online Store → Themes
2. Click "Customize" on Dawn theme
3. Theme Settings → Custom CSS
4. PASTE ALL CSS BELOW:

```css
/* TYREFLOW ORANGE/BLACK THEME */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@300;400;500;600;700&display=swap');

:root {
  --color-primary: #FF6B35;
  --color-primary-hover: #E85A2D;
  --color-primary-glow: #FF8C42;
  --color-bg: #0A0A0A;
  --color-bg-light: #111111;
  --color-bg-card: #1A1A1A;
  --color-text: #FFFFFF;
  --color-text-muted: #888888;
  --color-border: #333333;
}

/* Global */
body {
  background-color: var(--color-bg) !important;
  color: var(--color-text) !important;
  font-family: 'Inter', sans-serif !important;
}

h1, h2, h3, h4, h5, h6 {
  font-family: 'Space Grotesk', sans-serif !important;
  letter-spacing: -0.5px;
}

/* Header */
.header-wrapper {
  background: rgba(10, 10, 10, 0.95) !important;
  backdrop-filter: blur(20px) !important;
  border-bottom: 1px solid rgba(255, 107, 53, 0.1) !important;
}

.header__heading-logo {
  filter: brightness(0) invert(1) !important;
}

.header__menu-item {
  color: var(--color-text-muted) !important;
  text-transform: uppercase !important;
  letter-spacing: 0.5px !important;
  font-size: 14px !important;
  font-weight: 500 !important;
}

.header__menu-item:hover {
  color: var(--color-primary) !important;
}

/* Announcement Bar */
.announcement-bar {
  background: rgba(255, 107, 53, 0.1) !important;
  border-bottom: 1px solid rgba(255, 107, 53, 0.3) !important;
  color: var(--color-primary) !important;
}

.announcement-bar__message {
  font-weight: 600 !important;
  letter-spacing: 1px !important;
  text-transform: uppercase !important;
}

/* Buttons */
.button {
  background: linear-gradient(135deg, var(--color-primary), var(--color-primary-hover)) !important;
  border: none !important;
  border-radius: 8px !important;
  padding: 16px 32px !important;
  font-weight: 600 !important;
  letter-spacing: 0.5px !important;
  text-transform: uppercase !important;
  box-shadow: 0 8px 30px rgba(255, 107, 53, 0.4) !important;
  transition: all 0.3s ease !important;
}

.button:hover {
  transform: translateY(-3px) !important;
  box-shadow: 0 12px 40px rgba(255, 107, 53, 0.6) !important;
}

.button--secondary {
  background: transparent !important;
  border: 2px solid var(--color-border) !important;
  color: var(--color-text) !important;
  box-shadow: none !important;
}

.button--secondary:hover {
  border-color: var(--color-primary) !important;
  color: var(--color-primary) !important;
  transform: translateY(-3px) !important;
}

/* Product Cards */
.card {
  background: var(--color-bg-card) !important;
  border: 1px solid var(--color-border) !important;
  border-radius: 16px !important;
  overflow: hidden !important;
  transition: all 0.4s ease !important;
}

.card:hover {
  border-color: var(--color-primary) !important;
  box-shadow: 0 20px 50px rgba(255, 107, 53, 0.2) !important;
  transform: translateY(-8px) !important;
}

.card__information {
  padding: 24px !important;
}

/* Prices */
.price {
  color: var(--color-primary) !important;
  font-weight: 700 !important;
  font-size: 1.2em !important;
}

.price-item--regular {
  color: var(--color-text-muted) !important;
}

/* Product Page */
.product__title {
  font-size: 2.5em !important;
  margin-bottom: 16px !important;
}

.product__description {
  color: var(--color-text-muted) !important;
  line-height: 1.7 !important;
}

/* Collection Grid */
.grid__item {
  margin-bottom: 30px !important;
}

/* Footer */
.footer {
  background: var(--color-bg) !important;
  border-top: 1px solid var(--color-border) !important;
  margin-top: 80px !important;
}

.footer__content {
  color: var(--color-text-muted) !important;
}

.footer-block__heading {
  color: var(--color-text) !important;
  font-family: 'Space Grotesk', sans-serif !important;
  text-transform: uppercase !important;
  letter-spacing: 1px !important;
}

/* Links */
a {
  color: var(--color-text-muted) !important;
  transition: color 0.3s ease !important;
}

a:hover {
  color: var(--color-primary) !important;
}

/* Form Fields */
.field__input {
  background: var(--color-bg-card) !important;
  border: 1px solid var(--color-border) !important;
  border-radius: 8px !important;
  color: var(--color-text) !important;
  padding: 16px !important;
}

.field__input:focus {
  border-color: var(--color-primary) !important;
  box-shadow: 0 0 0 2px rgba(255, 107, 53, 0.2) !important;
}

/* Cart */
.cart-drawer {
  background: var(--color-bg-light) !important;
  border-left: 1px solid var(--color-border) !important;
}

.cart-drawer__header {
  border-bottom: 1px solid var(--color-border) !important;
}

/* Badges */
.badge {
  background: rgba(255, 107, 53, 0.1) !important;
  border: 1px solid rgba(255, 107, 53, 0.3) !important;
  color: var(--color-primary) !important;
  border-radius: 100px !important;
  padding: 8px 16px !important;
  font-weight: 600 !important;
  letter-spacing: 1px !important;
  text-transform: uppercase !important;
}

/* Sale Badge */
.price__badge-sale {
  background: var(--color-primary) !important;
  color: var(--color-text) !important;
}

/* Gradient Text Utility */
.gradient-text {
  background: linear-gradient(135deg, var(--color-primary), var(--color-primary-glow)) !important;
  -webkit-background-clip: text !important;
  -webkit-text-fill-color: transparent !important;
  background-clip: text !important;
}

/* Animations */
@keyframes glow {
  0%, 100% { box-shadow: 0 0 20px rgba(255, 107, 53, 0.3); }
  50% { box-shadow: 0 0 40px rgba(255, 107, 53, 0.6); }
}

.animate-glow {
  animation: glow 2s ease-in-out infinite;
}

/* Mobile Adjustments */
@media screen and (max-width: 768px) {
  .header__menu-item {
    font-size: 12px !important;
  }
  
  .button {
    padding: 14px 24px !important;
    font-size: 14px !important;
  }
}
```

## Step 3: Configure Store Settings

### Announcement Bar Text:
```
🚚 FREE SHIPPING AUSTRALIA-WIDE ON ORDERS OVER $100
```

### Homepage Sections (in order):
1. **Image Banner** - Full width, black background
   - Heading: "Ride Faster. Ride Further."
   - Button: "Shop Collection" → /collections/all
   
2. **Rich Text** - 
   - Heading: "Engineered for Performance"
   - Text: "Premium bike tyres tested rigorously for maximum grip, durability, and speed."

3. **Featured Collection** - Show 4 products
   - Collection: All Products
   
4. **Multicolumn** (Features) - 6 columns:
   - ⚡ Speed Optimized
   - 🛡️ Puncture Protection
   - 🌧️ All-Weather Grip
   - ♻️ Eco-Friendly
   - 🏆 Pro Tested
   - 📦 Fast Shipping

5. **Newsletter** - 
   - Heading: "Ready to Upgrade Your Ride?"
   - Subtext: "Join thousands of cyclists. Get exclusive offers."

## Step 4: Add Products

### Product 1: FlowSpeed Pro 700c
- **Category:** Road Racing
- **Price:** $89.99
- **Compare at:** $119.99
- **Description:** Ultra-low rolling resistance. Race-ready performance.
- **Tags:** road, racing, 700c, performance

### Product 2: TrailBlazer MTB 29"
- **Category:** Mountain
- **Price:** $79.99
- **Description:** Aggressive tread for maximum grip. Puncture-resistant.
- **Tags:** mountain, mtb, 29er, trail

### Product 3: AllRoad Explorer
- **Category:** Gravel
- **Price:** $69.99
- **Description:** Versatile tread for any terrain. Tubeless ready.
- **Tags:** gravel, adventure, all-road, tubeless

### Product 4: CityGlide Commuter
- **Category:** Urban
- **Price:** $49.99
- **Compare at:** $59.99
- **Description:** Smooth rolling. Enhanced puncture protection for city riding.
- **Tags:** urban, commuter, city, durable

## Step 5: Configure Navigation

### Main Menu:
- Shop → /collections/all
- Road Tyres → /collections/road
- Mountain Tyres → /collections/mountain
- Gravel Tyres → /collections/gravel
- About → /pages/about
- Contact → /pages/contact

### Footer Menu:
- Shipping Info → /pages/shipping
- Returns → /pages/returns
- Size Guide → /pages/size-guide
- FAQ → /pages/faq
- Privacy Policy → /pages/privacy
- Terms → /pages/terms

## Step 6: Essential Pages (Create These)

### About Us Page:
```
TyreFlow - Premium Bike Tyres

Founded in 2024, TyreFlow is dedicated to providing cyclists with the highest quality tyres for every ride. From road racing to mountain trails, we've got your ride covered.

Our mission is simple: engineer tyres that let you ride faster and further, without compromise.

Engineered in Australia. Ridden worldwide.
```

### Shipping Page:
```
Shipping Information

FREE SHIPPING on orders over $100 Australia-wide.

Standard Shipping: $9.99 (3-5 business days)
Express Shipping: $19.99 (1-2 business days)

All orders dispatched within 24 hours.
```

### Size Guide Page:
```
Tyre Size Guide

ROAD BIKES:
- 700c x 23mm: Racing, time trials
- 700c x 25mm: Standard road riding
- 700c x 28mm: Comfort, endurance
- 700c x 32mm: Gravel, mixed terrain

MOUNTAIN BIKES:
- 29" x 2.1": XC racing
- 29" x 2.3": Trail riding
- 27.5" x 2.4": Enduro, downhill
- 26" x 2.0": Vintage, urban

Not sure? Contact us at support@tyreflow.com
```

## Step 7: Settings

### Store Details:
- Store name: TyreFlow
- Email: simontroup27@gmail.com
- Currency: Australian Dollar (AUD)
- Timezone: Australia/Sydney

### Payments:
- Enable Shopify Payments
- Accept: Credit cards, PayPal, Shop Pay

### Shipping:
- Origin: Your address
- Free shipping over $100
- Rates by weight or flat rate

### Taxes:
- Australia GST: 10%
- Include in prices: Yes

## DONE! 🎉

Your Shopify store should now match your GitHub Pages landing page perfectly!

Store URL: https://tyreflow.myshopify.com
(Change to custom domain in Settings > Domains)
