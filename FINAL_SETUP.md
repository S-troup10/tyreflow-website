# 🛒 TYREFLOW SHOPIFY STORE - FINAL SETUP STEPS

## ❌ API Connection Issue

The provided credentials don't have API access. This is likely because:
- Store is in "password protected" mode
- API key needs different permissions
- Store URL might be different

---

## ✅ WHAT'S ALREADY DONE

### Website (COMPLETE)
🔗 **https://s-troup10.github.io/tyreflow-website/**

### Shopify Store (PARTIAL)
- Store exists: https://tyreflow.myshopify.com
- Password protected ("Opening soon")

---

## 🔧 TO COMPLETE SETUP

### Option 1: Give me Admin Access (Fastest)

**Step 1: Add me as staff**
1. Go to: https://tyreflow.myshopify.com/admin/settings/account
2. Click "Add staff"
3. Email: `agent@openclaw.ai`
4. Permissions: Themes, Products, Orders, Pages
5. I'll finish everything in 5 minutes

### Option 2: Create Private App (Secure)

**Step 1: Create API credentials**
1. Go to: https://tyreflow.myshopify.com/admin/settings/apps
2. Click "Develop apps"
3. "Create an app" → Name: "TyreFlow Setup"
4. Configuration → Admin API access scopes:
   - ✅ `read_products`, `write_products`
   - ✅ `read_themes`, `write_themes`
   - ✅ `read_orders`, `write_orders`
   - ✅ `read_shipping`, `write_shipping`
   - ✅ `read_pages`, `write_pages`
   - ✅ `read_script_tags`, `write_script_tags`
5. Install app → Reveal Admin API access token
6. **Paste the token here** (starts with `shpat_`)

### Option 3: Quick Manual Setup (10 minutes)

**Step 1: Open Store**
1. Go to: https://tyreflow.myshopify.com/admin
2. Remove password protection
3. Online Store → Preferences → Password protection → Disable

**Step 2: Add Theme CSS**
1. Online Store → Themes → Customize
2. Theme settings → Custom CSS
3. Paste the CSS from below

**Step 3: Create Products**
Add these 4 products:

| Product | Price | Category | Tags |
|---------|-------|----------|------|
| FlowSpeed Pro 700c | $89.99 (was $119.99) | Road Racing | road, racing, 700c |
| TrailBlazer MTB 29" | $79.99 | Mountain | mountain, mtb, 29er |
| AllRoad Explorer | $69.99 | Gravel | gravel, adventure |
| CityGlide Commuter | $49.99 (was $59.99) | Urban | urban, commuter |

**Step 4: Create Collections**
- Road Tyres (handle: road)
- Mountain Tyres (handle: mountain)
- Gravel Tyres (handle: gravel)
- Urban Tyres (handle: urban)

**Step 5: Configure Shipping**
- Free shipping over $100
- Standard: $9.99
- Express: $19.99

---

## 🎨 THEME CSS (Copy-Paste Ready)

```css
/* TYREFLOW PREMIUM THEME */
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
  text-transform: uppercase !important;
  letter-spacing: 0.5px !important;
  font-size: 14px !important;
}

.header__menu-item:hover {
  color: var(--orange) !important;
}

.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border: none !important;
  border-radius: 100px !important;
  padding: 16px 32px !important;
  font-weight: 600 !important;
  letter-spacing: 0.5px !important;
  text-transform: uppercase !important;
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

.price {
  color: var(--orange) !important;
  font-weight: 700 !important;
}

.price-item--regular {
  color: var(--gray-500) !important;
}

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

.gradient-text {
  background: linear-gradient(135deg, var(--orange), var(--orange-soft)) !important;
  -webkit-background-clip: text !important;
  -webkit-text-fill-color: transparent !important;
}

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

.cart-drawer {
  background: var(--black-elevated) !important;
  border-left: 1px solid var(--gray-800) !important;
}

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

## 📄 PAGES TO CREATE

### About Us
```
TyreFlow — Precision Engineered Bicycle Tyres

Founded in 2024, TyreFlow is dedicated to providing cyclists with the highest quality tyres for every ride. From road racing to mountain trails, we have got your ride covered.

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

## 🚀 RECOMMENDATION

**Best option:** Give me staff access (Option 1)
- Takes 2 minutes
- I'll configure everything perfectly
- More secure than sharing API keys

**Which option do you prefer?**
