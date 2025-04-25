USE ecommerce_db;

-- Insert Brands
INSERT INTO brand (name, description) VALUES 
('Nike', 'Sportswear and shoes'),
('Samsung', 'Electronics and gadgets');

-- Insert Product Categories
INSERT INTO product_category (name, description) VALUES 
('Clothing', 'All clothing items'),
('Electronics', 'Electronic devices');

-- Insert Products
INSERT INTO product (name, description, base_price, brand_id, category_id) VALUES 
('Air Max Sneakers', 'Comfortable running shoes', 1200.00, 1, 1),
('Galaxy S22', 'Latest Samsung smartphone', 18000.00, 2, 2);

-- Insert Colors
INSERT INTO color (name, hex_value) VALUES 
('Black', '#000000'),
('White', '#FFFFFF');

-- Insert Product Variations
INSERT INTO product_variation (product_id, color_id) VALUES 
(1, 1), -- Air Max - Black
(2, 2); -- Galaxy S22 - White

-- Insert Size Categories
INSERT INTO size_category (name) VALUES 
('Shoe Sizes'),
('Phone Storage');

-- Insert Size Options
INSERT INTO size_option (size_category_id, size_label) VALUES 
(1, '8'), (1, '9'), 
(2, '128GB'), (2, '256GB');

-- Insert Product Items (specific purchasable variations)
INSERT INTO product_item (product_variation_id, size_option_id, stock_quantity, price) VALUES 
(1, 1, 10, 1200.00), -- Air Max Black Size 8
(1, 2, 8, 1200.00),  -- Air Max Black Size 9
(2, 3, 5, 18000.00), -- Galaxy S22 White 128GB
(2, 4, 2, 20000.00); -- Galaxy S22 White 256GB

-- Insert Attribute Types
INSERT INTO attribute_type (type_name) VALUES 
('Text'), ('Number');

-- Insert Attribute Categories
INSERT INTO attribute_category (name) VALUES 
('Physical'), ('Technical');

-- Insert Product Attributes
INSERT INTO product_attribute (product_id, attribute_name, attribute_value, attribute_category_id, attribute_type_id) VALUES 
(1, 'Material', 'Mesh', 1, 1),
(1, 'Weight', '0.5', 1, 2),
(2, 'Battery Life', '24 hours', 2, 1),
(2, 'Weight', '0.4', 1, 2);

-- Insert Product Images
INSERT INTO product_image (product_id, image_url) VALUES 
(1, 'https://example.com/images/airmax_black.jpg'),
(2, 'https://example.com/images/galaxy_s22_white.jpg');