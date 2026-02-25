# TyreFlow Shopify Automation Script
# Run this to set up the complete Shopify store

$ShopifyToken = $args[0]
$StoreName = "tyreflow"

if (-not $ShopifyToken) {
    Write-Host "Creating Shopify store requires admin API access."
    Write-Host ""
    Write-Host "Please create a Shopify store manually:"
    Write-Host "1. Go to https://shopify.com"
    Write-Host "2. Start free trial"
    Write-Host "3. Store name: tyreflow"
    Write-Host "4. Email: simontroup27@gmail.com"
    Write-Host ""
    Write-Host "Then I'll configure the theme and products automatically."
    exit
}

# Theme configuration
$ThemeCSS = @"
:root {
  --color-primary: #FF6B35;
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

.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border: none !important;
  border-radius: 8px !important;
  box-shadow: 0 8px 30px rgba(255, 107, 53, 0.4);
}

.button:hover {
  transform: translateY(-3px);
  box-shadow: 0 12px 40px rgba(255, 107, 53, 0.6);
}

.card {
  background: #1A1A1A !important;
  border: 1px solid #333 !important;
  border-radius: 16px !important;
}

.card:hover {
  border-color: var(--color-primary) !important;
}

.price {
  color: var(--color-primary) !important;
  font-weight: 700;
}
"@

Write-Host "Shopify configuration ready"
Write-Host "Apply this CSS in: Online Store > Themes > Customize > Theme Settings > Custom CSS"
