# 🛒 TYREFLOW SHOPIFY STORE - COMPLETE SETUP GUIDE

## ✅ STATUS: Website Deployed | Shopify: Ready to Configure

---

## 🌐 LIVE WEBSITE (DONE)

**🔗 Your Website:** https://s-troup10.github.io/tyreflow-website/

✅ Premium design with:
- Playfair Display + Inter fonts
- Subtle noise texture overlay
- Animated marquee banner
- Floating tyre with glow effect
- Full mobile responsiveness
- Orange (#FF6B35) + Black (#0A0A0A) theme

---

## 🛒 SHOPIFY STORE SETUP

Shopify requires **email verification** for new stores (fraud prevention). 

### QUICK SETUP (3 minutes):

**Step 1: Create Store**
1. Click: https://www.shopify.com/free-trial
2. Email: `simontroup27@gmail.com`
3. Password: (create one)
4. Store name: `TyreFlow`
5. Answer setup questions (can skip most)

**Step 2: Get API Credentials**
1. In your Shopify admin, go to Settings → Apps and sales channels
2. Click "Develop apps"
3. Create an app called "TyreFlow Setup"
4. Enable these permissions:
   - Products (read/write)
   - Themes (read/write)
   - Orders (read/write)
   - Shipping (read/write)
5. Install app → Reveal Admin API access token
6. Copy the token (starts with `shpat_`)

**Step 3: Give Me Access**
Paste here:
- Store URL: `https://tyreflow.myshopify.com`
- Admin API Token: `shpat_xxxxxxxx`

Then I'll **automatically configure everything**:
- ✅ Upload orange/black theme
- ✅ Create all 4 products with descriptions
- ✅ Set up collections (Road, MTB, Gravel, Urban)
- ✅ Configure shipping rates
- ✅ Set up payment methods
- ✅ Create pages (About, Shipping, Size Guide)
- ✅ Configure navigation menus
- ✅ Set up taxes (10% GST)

---

## 🎨 THEME CODE (For Manual Setup)

If you prefer to set it up yourself, here's the complete theme CSS:

### Go to: Online Store → Themes → Customize → Theme Settings → Custom CSS

```css
/* TYREFLOW PREMIUM THEME - ORANGE/BLACK */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Playfair+Display:ital,wght@0,400;0,600;1,400&display=swap');

:root {
  --orange: #FF6B35;
  --orange-soft: #FF8C5A;
  --black: #0A0A0A;
  --black-elevated: #111111;
  --black-card: #161616;
  --white: #FAFAFA;
  --gray-300: #A3A3A3;
  --gray-500: #737373;
  --gray-800: #262626;
}

body {
  background-color: var(--black);
  color: var(--white);
  font-family: 'Inter', sans-serif;
}

h1, h2, h3, h4, h5, h6 {
  font-family: 'Playfair Display', serif;
  letter-spacing: -0.02em;
}

/* Header */
.header-wrapper {
  background: rgba(10,10,10,0.95) !important;
  backdrop-filter: blur(20px);
  border-bottom: 1px solid rgba(255,107,53,0.1);
}

.header__heading-logo {
  filter: brightness(0) invert(1);
}

.header__menu-item {
  color: var(--gray-300) !important;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  font-size: 14px;
}

.header__menu-item:hover {
  color: var(--orange) !important;
}

/* Buttons */
.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border: none !important;
  border-radius: 100px !important;
  padding: 16px 32px !important;
  font-weight: 600 !important;
  letter-spacing: 0.5px;
  text-transform: uppercase;
  box-shadow: 0 8px 30px rgba(255,107,53,0.4) !important;
  transition: all 0.3s ease !important;
}

.button:hover {
  transform: translateY(-3px) !important;
  box-shadow: 0 12px 40px rgba(255,107,53,0.6) !important;
}

.button--secondary {
  background: transparent !important;
  border: 1px solid var(--gray-800) !important;
  color: var(--white) !important;
  box-shadow: none !important;
}

.button--secondary:hover {
  border-color: var(--orange) !important;
  color: var(--orange) !important;
}

/* Cards */
.card {
  background: var(--black-card) !important;
  border: 1px solid var(--gray-800) !important;
  border-radius: 16px !important;
  overflow: hidden !important;
  transition: all 0.4s ease !important;
}

.card:hover {
  border-color: rgba(255,107,53,0.4) !important;
  transform: translateY(-8px) !important;
  box-shadow: 0 30px 60px rgba(0,0,0,0.4) !important;
}

/* Prices */
.price {
  color: var(--orange) !important;
  font-weight: 700 !important;
}

.price-item--regular {
  color: var(--gray-500) !important;
}

/* Announcement Bar */
.announcement-bar {
  background: rgba(255,107,53,0.1) !important;
  border-bottom: 1px solid rgba(255,107,53,0.3) !important;
  color: var(--orange) !important;
}

.announcement-bar__message {
  font-weight: 600 !important;
  letter-spacing: 1px !important;
  text-transform: uppercase !important;
  font-size: 12px !important;
}

/* Product Grid */
.grid__item {
  margin-bottom: 24px !important;
}

/* Footer */
.footer {
  background: var(--black) !important;
  border-top: 1px solid var(--gray-800) !important;
  margin-top: 80px !important;
}

.footer__content {
  color: var(--gray-300) !important;
}

.footer-block__heading {
  color: var(--white) !important;
  font-family: 'Playfair Display', serif !important;
  text-transform: uppercase;
  letter-spacing: 1px !important;
}

/* Badges */
.badge {
  background: rgba(255,107,53,0.1) !important;
  border: 1px solid rgba(255,107,53,0.3) !important;
  color: var(--orange) !important;
  border-radius: 100px !important;
  padding: 8px 16px !important;
  font-weight: 600 !important;
  letter-spacing: 1px !important;
  text-transform: uppercase !important;
  font-size: 11px !important;
}

.price__badge-sale {
  background: var(--orange) !important;
  color: var(--white) !important;
}

/* Gradient Text */
.gradient-text {
  background: linear-gradient(135deg, var(--orange), var(--orange-soft)) !important;
  -webkit-background-clip: text !important;
  -webkit-text-fill-color: transparent !important;
}

/* Forms */
.field__input {
  background: var(--black-card) !important;
  border: 1px solid var(--gray-800) !important;
  border-radius: 8px !important;
  color: var(--white) !important;
  padding: 16px !important;
}

.field__input:focus {
  border-color: var(--orange) !important;
  box-shadow: 0 0 0 2px rgba(255,107,53,0.2) !important;
}

/* Cart Drawer */
.cart-drawer {
  background: var(--black-elevated) !important;
  border-left: 1px solid var(--gray-800) !important;
}

.cart-drawer__header {
  border-bottom: 1px solid var(--gray-800) !important;
}

/* Mobile */
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

---

## 📦 PRODUCTS TO CREATE

### 1. FlowSpeed Pro 700c
- **Price:** $89.99
- **Compare at:** $119.99  
- **Category:** Road Racing
- **Description:** Ultra-low rolling resistance compound. Race-ready performance for competitive cyclists.
- **Tags:** road, racing, 700c, performance

### 2. TrailBlazer MTB 29"
- **Price:** $79.99
- **Category:** Mountain
- **Description:** Aggressive tread pattern for maximum grip. Reinforced sidewalls for trail durability.
- **Tags:** mountain, mtb, 29er, trail

### 3. AllRoad Explorer  
- **Price:** $69.99
- **Category:** Gravel
- **Description:** Versatile all-terrain performance. Tubeless ready for adventure riding.
- **Tags:** gravel, adventure, all-road, tubeless

### 4. CityGlide Commuter
- **Price:** $49.99
- **Compare at:** $59.99
- **Category:** Urban  
- **Description:** Smooth rolling with enhanced puncture protection. Perfect for daily commuting.
- **Tags:** urban, commuter, city, durable

---

## 🚚 SHIPPING SETUP

### Rates:
- **Free Shipping:** Orders over $100 (Australia-wide)
- **Standard:** $9.99 (3-5 business days)
- **Express:** $19.99 (1-2 business days)

### Settings:
- Origin: (your address)
- Processing time: 1 business day
- Cut-off time: 2:00 PM AEDT

---

## 💳 PAYMENT SETUP

Enable these payment methods:
- ✅ Shopify Payments (credit cards)
- ✅ PayPal
- ✅ Shop Pay
- ✅ Apple Pay (if enabled)
- ✅ Google Pay (if enabled)

---

## 📄 PAGES TO CREATE

### About Us
```
TyreFlow — Precision Engineered Bicycle Tyres

Founded in 2024, TyreFlow is dedicated to providing cyclists with the highest quality tyres for every ride. From road racing to mountain trails, we've got your ride covered.

Our mission is simple: engineer tyres that let you ride faster and further, without compromise.

Engineered in Australia. Ridden worldwide.
```

### Shipping Information
```
Shipping Information

FREE SHIPPING on orders over $100 Australia-wide.

Standard Shipping: $9.99 (3-5 business days)
Express Shipping: $19.99 (1-2 business days)

All orders dispatched within 24 hours.
Track your order with the tracking number sent via email.
```

### Size Guide
```
Bicycle Tyre Size Guide

ROAD BIKES:
• 700c x 23mm — Racing, time trials
• 700c x 25mm — Standard road riding  
• 700c x 28mm — Comfort, endurance
• 700c x 32mm — Gravel, mixed terrain

MOUNTAIN BIKES:
• 29" x 2.1" — XC racing
• 29" x 2.3" — Trail riding
• 27.5" x 2.4" — Enduro, downhill
• 26" x 2.0" — Vintage, urban

Not sure which size? Contact us at support@tyreflow.com
```

---

## 🎯 NEXT STEPS

**Option A: Give me API access (Fastest)**
1. Create store at https://www.shopify.com/free-trial
2. Get Admin API token from Settings → Apps → Develop apps
3. Paste token here
4. I'll configure everything automatically in 2 minutes

**Option B: DIY Setup**
1. Create store
2. Install Dawn theme
3. Paste the CSS above
4. Add the 4 products
5. Configure shipping & payments

**Option C: I Guide You**
Tell me "guide me" and I'll walk you through each step with screenshots.

---

## 🔗 IMPORTANT LINKS

- **Your Website:** https://s-troup10.github.io/tyreflow-website/
- **GitHub Repo:** https://github.com/S-troup10/tyreflow-website
- **Shopify Trial:** https://www.shopify.com/free-trial

---

## ❓ COMMON ISSUES

**Q: Do I need a custom domain?**
A: Not immediately. Your store will be at `tyreflow.myshopify.com`. You can add a custom domain later.

**Q: How much does Shopify cost?**
A: $39/month after trial. You need the Basic plan for full features.

**Q: Can I use the same GitHub token?**
A: No, Shopify requires separate authentication.

---

**Ready? Paste your Shopify Admin API token and I'll complete the setup automatically!** 🚀
