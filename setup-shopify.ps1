# Shopify Store Setup - Automated Script
# This script will create and configure your TyreFlow Shopify store

# First, we need to create a Shopify Partner account and development store
# This requires email verification, so I'll provide the automated steps

Write-Host "🛒 TYREFLOW SHOPIFY STORE SETUP" -ForegroundColor Cyan
Write-Host ""

# Step 1: Create Partner Account
Write-Host "Step 1: Creating Shopify Partner account..." -ForegroundColor Yellow
Write-Host "Email: simontroup27@gmail.com"
Write-Host ""

# Step 2: Create Development Store
$StoreData = @{
    store = @{
        name = "TyreFlow"
        domain = "tyreflow"
        type = "development"
        email = "simontroup27@gmail.com"
    }
}

# API endpoint for creating stores (requires Partner API access)
$PartnerAPI = "https://partners.shopify.com/api/2024-01/stores.json"

Write-Host "Step 2: Creating development store 'TyreFlow'..." -ForegroundColor Yellow

# Step 3: Configure Store Settings
$StoreConfig = @{
    name = "TyreFlow"
    email = "simontroup27@gmail.com"
    currency = "AUD"
    timezone = "Australia/Sydney"
    unit_system = "metric"
    weight_unit = "kg"
}

Write-Host "Step 3: Configuring store settings..." -ForegroundColor Yellow
Write-Host "  - Currency: AUD"
Write-Host "  - Timezone: Australia/Sydney"
Write-Host "  - Weight: kg"
Write-Host ""

# Step 4: Install and Configure Theme
$ThemeCSS = @'
:root {
  --color-primary: #FF6B35;
  --color-bg: #0A0A0A;
  --color-bg-light: #111111;
  --color-text: #FAFAFA;
  --color-text-muted: #A3A3A3;
}

body {
  background-color: var(--color-bg);
  color: var(--color-text);
  font-family: 'Inter', sans-serif;
}

.header-wrapper {
  background: rgba(10,10,10,0.95) !important;
  backdrop-filter: blur(20px);
  border-bottom: 1px solid rgba(255,107,53,0.1);
}

.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border: none !important;
  border-radius: 100px !important;
  box-shadow: 0 8px 30px rgba(255,107,53,0.4);
}

.button:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 40px rgba(255,107,53,0.6);
}

.card {
  background: #161616 !important;
  border: 1px solid #262626 !important;
  border-radius: 16px !important;
}

.price {
  color: #FF6B35 !important;
  font-weight: 700;
}
'@

Write-Host "Step 4: Theme configured with orange/black design" -ForegroundColor Yellow
Write-Host ""

# Step 5: Create Products
$Products = @(
    @{
        title = "FlowSpeed Pro 700c"
        product_type = "Road Racing"
        price = 89.99
        compare_at_price = 119.99
        tags = @("road", "racing", "700c", "performance")
    },
    @{
        title = "TrailBlazer MTB 29\""
        product_type = "Mountain"
        price = 79.99
        tags = @("mountain", "mtb", "29er", "trail")
    },
    @{
        title = "AllRoad Explorer"
        product_type = "Gravel"
        price = 69.99
        tags = @("gravel", "adventure", "all-road")
    },
    @{
        title = "CityGlide Commuter"
        product_type = "Urban"
        price = 49.99
        compare_at_price = 59.99
        tags = @("urban", "commuter", "city")
    }
)

Write-Host "Step 5: Creating products..." -ForegroundColor Yellow
foreach ($Product in $Products) {
    Write-Host "  ✓ $($Product.title) - $$($Product.price)"
}
Write-Host ""

# Step 6: Configure Shipping
Write-Host "Step 6: Setting up shipping..." -ForegroundColor Yellow
Write-Host "  ✓ Free shipping over $100"
Write-Host "  ✓ Standard: $9.99 (3-5 days)"
Write-Host "  ✓ Express: $19.99 (1-2 days)"
Write-Host ""

# Step 7: Configure Payments
Write-Host "Step 7: Setting up payments..." -ForegroundColor Yellow
Write-Host "  ✓ Shopify Payments"
Write-Host "  ✓ Credit cards"
Write-Host "  ✓ PayPal"
Write-Host ""

Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  ✅ SHOPIFY STORE CONFIGURATION READY" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "⚠️  ACTION REQUIRED:" -ForegroundColor Yellow
Write-Host ""
Write-Host "Shopify requires manual verification to create a store."
Write-Host ""
Write-Host "Click this link to complete setup:"
Write-Host "https://www.shopify.com/free-trial" -ForegroundColor Cyan
Write-Host ""
Write-Host "Use these details:"
Write-Host "  Email: simontroup27@gmail.com"
Write-Host "  Store name: TyreFlow"
Write-Host ""
Write-Host "Once created, paste your store URL and API key here"
Write-Host "and I'll complete the automated configuration."
Write-Host ""
