const axios = require('axios');
const fs = require('fs');

const API_KEY = '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';
const API_PASSWORD = 'ec9bfa972d507b5860d69d7eba41692a';
const SHOP_DOMAIN = 'tyreflow.myshopify.com';
const BASE_URL = `https://${SHOP_DOMAIN}/admin/api/2024-01`;

// Auth for axios
const auth = {
  username: API_KEY,
  password: API_PASSWORD
};

async function testConnection() {
  try {
    const response = await axios.get(`${BASE_URL}/shop.json`, { auth });
    console.log('✅ Connected to:', response.data.shop.name);
    return response.data.shop;
  } catch (error) {
    console.error('❌ Connection failed:', error.response?.data || error.message);
    process.exit(1);
  }
}

async function getThemes() {
  try {
    const response = await axios.get(`${BASE_URL}/themes.json`, { auth });
    return response.data.themes;
  } catch (error) {
    console.error('Failed to get themes:', error.message);
    return [];
  }
}

async function updateThemeSettings(themeId) {
  const settings = `
:root {
  --color-primary: #FF6B35;
  --color-bg: #0A0A0A;
  --color-text: #FAFAFA;
}

body {
  background-color: var(--color-bg);
  color: var(--color-text);
  font-family: 'Inter', sans-serif;
}

.button {
  background: linear-gradient(135deg, #FF6B35, #E85A2D) !important;
  border-radius: 100px !important;
}

.price {
  color: #FF6B35 !important;
}
`;
  
  try {
    await axios.put(`${BASE_URL}/themes/${themeId}/assets.json`, {
      asset: {
        key: 'assets/tyreflow-custom.css',
        value: settings
      }
    }, { auth });
    console.log('✅ Theme settings updated');
  } catch (error) {
    console.error('Failed to update theme:', error.message);
  }
}

async function createProduct(product) {
  try {
    const response = await axios.post(`${BASE_URL}/products.json`, {
      product: product
    }, { auth });
    console.log(`✅ Created product: ${product.title}`);
    return response.data.product;
  } catch (error) {
    console.error(`Failed to create ${product.title}:`, error.response?.data?.errors || error.message);
    return null;
  }
}

async function createCollection(collection) {
  try {
    const response = await axios.post(`${BASE_URL}/custom_collections.json`, {
      custom_collection: collection
    }, { auth });
    console.log(`✅ Created collection: ${collection.title}`);
    return response.data.custom_collection;
  } catch (error) {
    console.error(`Failed to create collection:`, error.message);
    return null;
  }
}

async function createPage(page) {
  try {
    const response = await axios.post(`${BASE_URL}/pages.json`, {
      page: page
    }, { auth });
    console.log(`✅ Created page: ${page.title}`);
    return response.data.page;
  } catch (error) {
    console.error(`Failed to create page:`, error.message);
    return null;
  }
}

async function main() {
  console.log('🛒 TYREFLOW SHOPIFY SETUP\n');
  
  // Test connection
  const shop = await testConnection();
  console.log(`Shop: ${shop.name} (${shop.domain})\n`);
  
  // Get themes
  const themes = await getThemes();
  const mainTheme = themes.find(t => t.role === 'main') || themes[0];
  console.log(`Using theme: ${mainTheme.name} (ID: ${mainTheme.id})\n`);
  
  // Update theme
  console.log('Updating theme...');
  await updateThemeSettings(mainTheme.id);
  
  // Create collections
  console.log('\nCreating collections...');
  const collections = [
    { title: 'Road Tyres', handle: 'road', body_html: 'High-performance road cycling tyres' },
    { title: 'Mountain Tyres', handle: 'mountain', body_html: 'Durable tyres for trail riding' },
    { title: 'Gravel Tyres', handle: 'gravel', body_html: 'Versatile tyres for mixed terrain' },
    { title: 'Urban Tyres', handle: 'urban', body_html: 'Reliable tyres for city commuting' }
  ];
  
  for (const collection of collections) {
    await createCollection(collection);
  }
  
  // Create products
  console.log('\nCreating products...');
  const products = [
    {
      title: 'FlowSpeed Pro 700c',
      body_html: '<p>Ultra-low rolling resistance compound. Race-ready performance for competitive cyclists.</p><ul><li>700c x 25mm</li><li>220g</li><li>120 TPI</li><li>Tubeless ready</li></ul>',
      vendor: 'TyreFlow',
      product_type: 'Road Racing',
      tags: ['road', 'racing', '700c', 'performance'],
      variants: [
        {
          title: 'Default',
          price: '89.99',
          compare_at_price: '119.99',
          inventory_quantity: 100,
          requires_shipping: true
        }
      ]
    },
    {
      title: 'TrailBlazer MTB 29"',
      body_html: '<p>Aggressive tread pattern for maximum grip. Reinforced sidewalls for trail durability.</p><ul><li>29" x 2.3"</li><li>850g</li><li>60 TPI</li><li>Puncture protection</li></ul>',
      vendor: 'TyreFlow',
      product_type: 'Mountain',
      tags: ['mountain', 'mtb', '29er', 'trail'],
      variants: [
        {
          title: 'Default',
          price: '79.99',
          inventory_quantity: 100,
          requires_shipping: true
        }
      ]
    },
    {
      title: 'AllRoad Explorer',
      body_html: '<p>Versatile all-terrain performance. Tubeless ready for adventure riding.</p><ul><li>700c x 40mm</li><li>450g</li><li>60 TPI</li><li>Tubeless ready</li></ul>',
      vendor: 'TyreFlow',
      product_type: 'Gravel',
      tags: ['gravel', 'adventure', 'all-road', 'tubeless'],
      variants: [
        {
          title: 'Default',
          price: '69.99',
          inventory_quantity: 100,
          requires_shipping: true
        }
      ]
    },
    {
      title: 'CityGlide Commuter',
      body_html: '<p>Smooth rolling with enhanced puncture protection. Perfect for daily commuting.</p><ul><li>700c x 32mm</li><li>380g</li><li>30 TPI</li><li>Reflective sidewall</li></ul>',
      vendor: 'TyreFlow',
      product_type: 'Urban',
      tags: ['urban', 'commuter', 'city', 'durable'],
      variants: [
        {
          title: 'Default',
          price: '49.99',
          compare_at_price: '59.99',
          inventory_quantity: 100,
          requires_shipping: true
        }
      ]
    }
  ];
  
  for (const product of products) {
    await createProduct(product);
  }
  
  // Create pages
  console.log('\nCreating pages...');
  const pages = [
    {
      title: 'About Us',
      handle: 'about-us',
      body_html: '<h1>TyreFlow — Precision Engineered Bicycle Tyres</h1><p>Founded in 2024, TyreFlow is dedicated to providing cyclists with the highest quality tyres for every ride. From road racing to mountain trails, we have got your ride covered.</p><p>Our mission is simple: engineer tyres that let you ride faster and further, without compromise.</p><p><strong>Engineered in Australia. Ridden worldwide.</strong></p>'
    },
    {
      title: 'Shipping Information',
      handle: 'shipping',
      body_html: '<h1>Shipping Information</h1><p><strong>FREE SHIPPING</strong> on orders over $100 Australia-wide.</p><h3>Shipping Options</h3><ul><li><strong>Standard Shipping:</strong> $9.99 (3-5 business days)</li><li><strong>Express Shipping:</strong> $19.99 (1-2 business days)</li></ul><p>All orders dispatched within 24 hours. Track your order with the tracking number sent via email.</p>'
    },
    {
      title: 'Size Guide',
      handle: 'size-guide',
      body_html: '<h1>Bicycle Tyre Size Guide</h1><h3>ROAD BIKES</h3><ul><li>700c x 23mm — Racing, time trials</li><li>700c x 25mm — Standard road riding</li><li>700c x 28mm — Comfort, endurance</li><li>700c x 32mm — Gravel, mixed terrain</li></ul><h3>MOUNTAIN BIKES</h3><ul><li>29" x 2.1" — XC racing</li><li>29" x 2.3" — Trail riding</li><li>27.5" x 2.4" — Enduro, downhill</li><li>26" x 2.0" — Vintage, urban</li></ul><p>Not sure which size? Contact us at support@tyreflow.com</p>'
    }
  ];
  
  for (const page of pages) {
    await createPage(page);
  }
  
  console.log('\n✅ SETUP COMPLETE!');
  console.log(`\nYour store: https://${SHOP_DOMAIN}`);
}

main().catch(console.error);
