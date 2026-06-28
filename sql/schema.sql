-- ============================================================
-- Online Food Ordering System — Database Schema
-- Database: food_ordering_db
-- ============================================================

CREATE DATABASE IF NOT EXISTS food_ordering_db;
USE food_ordering_db;

-- ============================================================
-- 1. USERS TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    address TEXT,
    role VARCHAR(20) DEFAULT 'CUSTOMER',
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- 2. RESTAURANTS TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    cuisine VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) DEFAULT 0.0,
    delivery_time INT DEFAULT 30,
    image_url VARCHAR(500),
    is_active BOOLEAN DEFAULT TRUE
);

-- ============================================================
-- 3. MENU TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    rating DECIMAL(2,1) DEFAULT 0.0,
    image_url VARCHAR(500),
    is_available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE
);

-- ============================================================
-- 4. ORDERS TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status ENUM('PLACED','CONFIRMED','PREPARING','OUT_FOR_DELIVERY','DELIVERED','CANCELLED') DEFAULT 'PLACED',
    payment_mode VARCHAR(50) NOT NULL,
    address TEXT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

-- ============================================================
-- 5. ORDER ITEMS TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    menu_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES menu(id)
);

-- ============================================================
-- SEED DATA: 20 Unique South Indian Restaurants
-- ============================================================
INSERT INTO restaurants (name, cuisine, rating, delivery_time, image_url, is_active) VALUES
-- 1
('Vasantha Bhavan', 'South Indian, Pure Veg', 4.3, 25, '/FoodOrderingSystem/images/restaurants/restaurant_pure_veg.png', TRUE),
-- 2
('Murugan Idli Shop', 'South Indian, Tiffin', 4.8, 20, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=400', TRUE),
-- 3
('Ratna Cafe', 'South Indian, Breakfast', 4.6, 20, '/FoodOrderingSystem/images/restaurants/restaurant_pure_veg.png', TRUE),
-- 4
('Anjappar Chettinad', 'Chettinad, South Indian', 4.5, 40, '/FoodOrderingSystem/images/restaurants/restaurant_chettinad.png', TRUE),
-- 5
('Dindigul Thalappakatti', 'Biryani, South Indian', 4.7, 35, '/FoodOrderingSystem/images/restaurants/restaurant_biryani.png', TRUE),
-- 6
('Nair Mess', 'Kerala, Seafood, Meals', 4.5, 30, '/FoodOrderingSystem/images/restaurants/restaurant_kerala.png', TRUE),
-- 7
('Saravana Bhavan', 'South Indian, Pure Veg', 4.4, 25, 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=400', TRUE),
-- 8
('Buhari Hotel', 'South Indian, Non-Veg', 4.3, 35, 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=400', TRUE),
-- 9
('A2B - Adyar Ananda Bhavan', 'South Indian, Sweets, Snacks', 4.4, 30, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400', TRUE),
-- 10
('Hotel Junior Kuppanna', 'Kongunadu, South Indian', 4.6, 35, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400', TRUE),
-- 11
('Sangeetha Veg Restaurant', 'South Indian, North Indian, Veg', 4.3, 30, '/FoodOrderingSystem/images/restaurants/restaurant_pure_veg.png', TRUE),
-- 12
('Sukkubhai Biriyani', 'Biryani, Mughlai', 4.5, 35, '/FoodOrderingSystem/images/restaurants/restaurant_biryani.png', TRUE),
-- 13
('Chennai Dosa Company', 'South Indian, Dosa Varieties', 4.4, 25, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400', TRUE),
-- 14
('Mathsya - Sea Food Corner', 'Seafood, Coastal, South Indian', 4.6, 40, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=400', TRUE),
-- 15
('Kaaraikudi Mess', 'Chettinad, Non-Veg', 4.4, 35, '/FoodOrderingSystem/images/restaurants/restaurant_chettinad.png', TRUE),
-- 16
('ID Food Restaurant', 'Tamil Breakfast, Tiffin', 4.5, 25, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=400', TRUE),
-- 17
('Palmshore Restaurant', 'Coastal, Kerala, Seafood', 4.3, 45, '/FoodOrderingSystem/images/restaurants/restaurant_kerala.png', TRUE),
-- 18
('Kongu Virundhu', 'Kongunadu, Vegan, Traditional', 4.5, 30, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=400', TRUE),
-- 19
('Chennai Street Bites', 'Street Food, Chaat, Snacks', 4.2, 15, '/FoodOrderingSystem/images/restaurants/restaurant_street_food.png', TRUE),
-- 20
('Zaitoon Arabian', 'Arabian, North Indian, Mughlai', 4.5, 45, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400', TRUE);


-- ============================================================
-- SEED DATA: Menu Items
-- ============================================================

-- 1. Vasantha Bhavan
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(1, 'Ghee Podi Dosa', 'Crispy dosa drizzled with ghee and coated in flavorful lentil podi powder', 95.00, 4.5, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(1, 'Poori Masala (2 pcs)', 'Soft puffed wheat bread served with spiced potato masala curry', 80.00, 4.3, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(1, 'Ven Pongal', 'Savory rice and moong dal porridge tempered with ghee, pepper, and cashews', 75.00, 4.4, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(1, 'Vada (2 pcs)', 'Crispy deep-fried lentil donuts with sambar and coconut chutney', 60.00, 4.3, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(1, 'Filter Coffee', 'Traditional South Indian filter coffee brewed with dark roast decoction and milk', 30.00, 4.8, '/FoodOrderingSystem/images/menu/food_filter_coffee.png');

-- 2. Murugan Idli Shop
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(2, 'Ghee Podi Idli (4 pcs)', 'Fluffy steamed idlis tossed in generous ghee and spicy gunpowder podi', 90.00, 4.9, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(2, 'Mini Idli Sambar (15 pcs)', 'Bite-sized mini idlis soaked in a large bowl of flavorful tiffin sambar', 110.00, 4.8, 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?w=300'),
(2, 'Jigarthanda', 'Madurai famous iced milk drink with almond gum, rose syrup, and ice cream', 95.00, 4.7, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300'),
(2, 'Onion Uthappam', 'Thick soft pancake studded with finely chopped onions and green chilies', 100.00, 4.5, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(2, 'Tomato Uthappam', 'Fluffy uthappam topped with fresh tomato and coriander tempering', 95.00, 4.4, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300');

-- 3. Ratna Cafe
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(3, 'Idli Sambar (2 pcs)', 'The legendary Ratna Cafe idli — softest in Chennai, served with thick tiffin sambar', 50.00, 4.8, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(3, 'Crispy Masala Dosa', 'Paper-thin golden crispy dosa filled with classic potato masala', 85.00, 4.7, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(3, 'Medu Vada (2 pcs)', 'Crispy fried urad dal vadas served with sambar and coconut-green chutney', 55.00, 4.5, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(3, 'Pongal with Sambar', 'Classic savory pongal paired with thick tiffin sambar and ghee', 70.00, 4.6, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(3, 'Degree Coffee', 'Strong Degree filtered coffee made with pure milk and estate roast', 35.00, 4.9, '/FoodOrderingSystem/images/menu/food_filter_coffee.png');

-- 4. Anjappar Chettinad
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(4, 'Chettinad Chicken Curry', 'Spicy chicken curry made with freshly ground Chettinad masala and kalpasi', 280.00, 4.7, '/FoodOrderingSystem/images/menu/food_chettinad_curry.png'),
(4, 'Mutton Chukka Varuval', 'Dry-roasted tender mutton with pepper, curry leaves, and coconut bits', 360.00, 4.8, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(4, 'Kari Dosa', 'Soft dosa topped with spiced minced mutton and egg, Chettinad style', 200.00, 4.6, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(4, 'Nandu Rasam', 'Spicy and aromatic crab-infused pepper rasam, a Chettinad delicacy', 180.00, 4.5, 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=300'),
(4, 'Appam with Coconut Milk', 'Lacy rice flour pancake served with sweet warm coconut milk', 120.00, 4.4, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300');

-- 5. Dindigul Thalappakatti
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(5, 'Thalappakatti Mutton Biryani', 'Signature seeraga samba rice biryani with slow-cooked mutton, the original recipe', 360.00, 4.9, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(5, 'Thalappakatti Chicken Biryani', 'Flavourful seeraga samba biryani with tender chicken pieces', 280.00, 4.7, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(5, 'Chicken 65', 'Spicy deep-fried chicken marinated in ginger-garlic and red chili batter', 220.00, 4.6, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(5, 'Mutton Nenju Elumbu Soup', 'Warming and highly spiced mutton rib bone soup, great for winters', 150.00, 4.5, 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=300'),
(5, 'Raita', 'Cool and creamy yogurt with onion, cucumber, and mild jeera seasoning', 60.00, 4.2, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300');

-- 6. Nair Mess
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(6, 'Kerala Fish Curry Meals', 'Full Kerala banana leaf meals with seer fish curry, rice, sambar, and sides', 260.00, 4.8, '/FoodOrderingSystem/images/menu/food_fish_curry.png'),
(6, 'Meen Pollichathu', 'Fish marinated in Kerala spices and pan-roasted wrapped in banana leaf', 320.00, 4.7, '/FoodOrderingSystem/images/menu/food_fish_curry.png'),
(6, 'Kerala Beef Fry', 'Spiced Kerala style beef dry roast with coconut bits and curry leaves', 220.00, 4.6, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=300'),
(6, 'Parotta (2 pcs)', 'Flaky layered wheat parotta served with salna or egg roast', 50.00, 4.5, '/FoodOrderingSystem/images/menu/food_parotta.png'),
(6, 'Puttu with Kadala Curry', 'Steamed rice-coconut cylinders served with spiced black chickpea curry', 110.00, 4.6, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300');

-- 7. Saravana Bhavan
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(7, 'Mini Tiffin', 'Combo plate of mini idli, pongal, dosa, kesari, and chutney sambar', 150.00, 4.7, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(7, 'South Indian Meals', 'Complete Tamil Nadu style meals with 4 curries, rice, sambar, rasam', 180.00, 4.6, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(7, 'Rava Dosa', 'Crispy lacy semolina pancake served with coconut chutney and sambar', 110.00, 4.5, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(7, 'Mysore Masala Dosa', 'Dosa layered with spicy red coconut chutney and potato masala filling', 120.00, 4.6, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=300'),
(7, 'Badam Milk', 'Chilled almond milk sweetened with saffron, cardamom, and rose', 80.00, 4.4, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300');

-- 8. Buhari Hotel
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(8, 'Original Chicken 65', 'The legendary 1965 invention — spicy crispy chicken in fiery batter, served with onion rings', 270.00, 4.9, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(8, 'Mutton Biryani', 'Classic Chennai style dum mutton biryani with basmati rice', 330.00, 4.6, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(8, 'Ceylon Egg Parotta', 'Minced parotta mixed with egg and spices, cooked in a hot griddle', 180.00, 4.5, '/FoodOrderingSystem/images/menu/food_parotta.png'),
(8, 'Brain Masala', 'Spiced goat brain curry, a Buhari specialty served with naan', 250.00, 4.3, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=300'),
(8, 'Chicken Tikka', 'Tandoor-grilled marinated chicken pieces with mint chutney', 280.00, 4.5, 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=300');

-- 9. A2B - Adyar Ananda Bhavan
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(9, 'Masala Dosa', 'Classic crispy dosa filled with spiced potato masala, served with chutney', 90.00, 4.5, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(9, 'Pongal', 'Savory ven pongal with ghee tempering, served with vada and chutney', 80.00, 4.4, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(9, 'Gulab Jamun (2 pcs)', 'Soft milk-solid khoya balls soaked in rose-cardamom sugar syrup', 60.00, 4.6, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300'),
(9, 'Kaju Katli (100g)', 'Premium diamond-shaped cashew fudge with silver leaf topping', 150.00, 4.7, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(9, 'Masala Chai', 'Freshly brewed spiced tea with ginger, cardamom, and Assam tea leaves', 30.00, 4.3, '/FoodOrderingSystem/images/menu/food_filter_coffee.png');

-- 10. Hotel Junior Kuppanna
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(10, 'Kongu Mutton Biryani', 'Traditional Kongunadu seeraga samba rice biryani with tender goat meat', 340.00, 4.8, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(10, 'Pichi Potta Nattu Kozhi', 'Shredded country chicken cooked in rich aromatic spices', 300.00, 4.7, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=300'),
(10, 'Pallipalayam Chicken Fry', 'Dry chicken fry with pearl onions, red chilies, and coconut slivers, Kongu style', 290.00, 4.9, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(10, 'Kongu Vellai Kozhi Kulambu', 'White chicken curry with coconut milk, cashews, and mild spices', 280.00, 4.6, '/FoodOrderingSystem/images/menu/food_chettinad_curry.png'),
(10, 'Thenga Sadam', 'Coconut rice tempered with mustard, dried red chilies, and fresh coconut', 80.00, 4.3, '/FoodOrderingSystem/images/menu/food_meals_thali.png');

-- 11. Sangeetha Veg Restaurant
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(11, 'Ghee Roast Dosa', 'Paper-thin crispy dosa roasted in pure A2 ghee until golden', 130.00, 4.6, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(11, 'Chole Bhature', 'Spicy North Indian chickpea curry served with fluffy deep-fried bhature', 150.00, 4.4, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(11, 'South Indian Thali', 'Complete veg meals with sambar, 4 curries, rasam, curd, rice and dessert', 190.00, 4.5, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(11, 'Paneer Butter Masala', 'Cottage cheese cubes in a velvety tomato-cashew butter gravy', 220.00, 4.4, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=300'),
(11, 'Mango Lassi', 'Chilled thick yogurt blended with Alphonso mango pulp and cardamom', 80.00, 4.5, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300');

-- 12. Sukkubhai Biriyani
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(12, 'Sukkubhai Special Beef Biryani', 'Authentic Chennai-style beef dum biryani, the house specialty since 1962', 230.00, 4.9, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(12, 'Chicken Biryani', 'Fragrant basmati rice layered with spiced chicken, fried onions, and mint', 250.00, 4.7, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(12, 'Mutton Sukka', 'Spicy dry mutton fry with whole spices and shallots', 300.00, 4.6, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(12, 'Double Ka Meetha', 'Hyderabadi bread pudding soaked in saffron milk and garnished with dry fruits', 120.00, 4.3, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300'),
(12, 'Mirchi Ka Salan', 'Long green chilies cooked in a tangy peanut-sesame-coconut gravy', 100.00, 4.2, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300');

-- 13. Chennai Dosa Company
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(13, 'Pesarattu (Green Moong Dosa)', 'Andhra-style green moong dosa with ginger chutney and upma stuffing', 100.00, 4.6, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(13, 'Cheese Burst Dosa', 'Modern loaded dosa filled with melted cheddar and mozzarella with spiced potato', 180.00, 4.5, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(13, 'Set Dosa (3 pcs)', 'Soft, thick, spongy trio of dosas served with coconut chutney and vegetable stew', 90.00, 4.4, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(13, 'Ragi Dosa', 'Healthy finger millet dosa, nutty and slightly crispy, served with tomato chutney', 95.00, 4.3, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(13, 'Butter Masala Dosa', 'Classic masala dosa generously coated in fresh white butter, golden and crispy', 130.00, 4.7, '/FoodOrderingSystem/images/menu/food_dosa_idli.png');

-- 14. Mathsya - Sea Food Corner
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(14, 'Vanjaram (Seer Fish) Fry', 'King fish marinated in turmeric and red chili, shallow-fried to perfection', 380.00, 4.8, '/FoodOrderingSystem/images/menu/food_fish_curry.png'),
(14, 'Prawn Masala', 'Juicy prawns cooked in a tangy onion-tomato masala with coconut milk', 350.00, 4.7, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300'),
(14, 'Crab Pepper Fry', 'Whole mud crab dry-roasted with black pepper, fennel, and curry leaves', 420.00, 4.6, '/FoodOrderingSystem/images/menu/food_chettinad_curry.png'),
(14, 'Fish Biryani', 'Aromatic basmati biryani layered with marinated fish and caramelized onions', 320.00, 4.5, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(14, 'Squid Roast', 'Tender squid rings tossed in spicy Kerala roast masala with coconut oil', 300.00, 4.4, '/FoodOrderingSystem/images/menu/food_fish_curry.png');

-- 15. Kaaraikudi Mess
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(15, 'Kavuni Arisi (Black Rice Pudding)', 'Traditional Chettinad black rice kheer cooked in coconut milk and jaggery', 90.00, 4.7, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300'),
(15, 'Kaaraikudi Mutton Kuzhambu', 'Rich slow-cooked mutton curry with ground Chettinad spice blend', 340.00, 4.8, '/FoodOrderingSystem/images/menu/food_chettinad_curry.png'),
(15, 'Aatu Kaal Soup', 'Nutritious and spicy goat leg bone soup, a Chettinad morning specialty', 160.00, 4.6, 'https://images.unsplash.com/photo-1547592166-23ac45744acd?w=300'),
(15, 'Vendakkai Kari (Okra Curry)', 'Tangy okra cooked with shallots and tamarind in traditional Chettinad style', 130.00, 4.3, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300'),
(15, 'Idiyappam with Chicken Stew', 'String hoppers paired with a mild aromatic coconut milk chicken stew', 150.00, 4.5, '/FoodOrderingSystem/images/menu/food_dosa_idli.png');

-- 16. ID Food Restaurant
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(16, 'Idiyappam with Egg Curry', 'Delicate rice noodle strings served with spicy egg masala gravy', 110.00, 4.6, '/FoodOrderingSystem/images/menu/food_dosa_idli.png'),
(16, 'Kallappam', 'Fermented rice pancake with toddy, soft and spongy, served with coconut stew', 100.00, 4.5, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(16, 'Paniyaram (6 pcs)', 'Small fluffy fermented rice dumplings, crispy outside, soft inside, with chutneys', 80.00, 4.4, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(16, 'Kuzhi Paniyaram (Spicy)', 'Spiced paniyaram with mustard, curry leaves, and green chili tempering', 85.00, 4.5, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(16, 'Ilaneer Payasam', 'Tender coconut pudding with condensed milk, cardamom, and dry fruits', 100.00, 4.6, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300');

-- 17. Palmshore Restaurant
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(17, 'Kerala Karimeen (Pearl Spot Fish) Curry', 'Backwater delicacy — pearl spot fish in a raw mango and coconut curry', 420.00, 4.8, '/FoodOrderingSystem/images/menu/food_fish_curry.png'),
(17, 'Prawn Thenga Varuval', 'Crispy prawns stir-fried with freshly grated coconut and red chilies', 380.00, 4.7, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300'),
(17, 'Tharavu (Duck) Roast', 'Slow-roasted duck in thick spiced gravy, a coastal Kerala specialty', 440.00, 4.6, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=300'),
(17, 'Appam (2 pcs) with Ishtu', 'Lacy appam served with Kerala vegetable ishtu in coconut milk', 120.00, 4.5, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=300'),
(17, 'Tender Coconut Juice', 'Fresh King coconut water served in shell with young coconut flesh', 80.00, 4.4, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300');

-- 18. Kongu Virundhu
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(18, 'Kongu Meals (Banana Leaf)', 'Traditional Kongunadu feast on banana leaf with kootu, poriyal, vathal kuzhambu, rice', 200.00, 4.7, '/FoodOrderingSystem/images/menu/food_meals_thali.png'),
(18, 'Aval Payasam', 'Flattened rice cooked in jaggery, coconut milk, and cardamom kheer', 80.00, 4.6, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300'),
(18, 'Kambu (Pearl Millet) Koozh', 'Healthy traditional fermented millet porridge served with raw onion and buttermilk', 60.00, 4.5, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(18, 'Vazhaipoo Vadai', 'Crispy banana flower fritters with spiced lentil batter, a traditional delicacy', 90.00, 4.4, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(18, 'Vetrilai Paaku (Betel Leaf)', 'Traditional after-meal mouth freshener with betel leaf and areca nut', 20.00, 4.2, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300');

-- 19. Chennai Street Bites
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(19, 'Pani Puri (6 pcs)', 'Crispy hollow shells filled with spiced potato, chana, and tangy mint water', 50.00, 4.7, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(19, 'Kara Boondi', 'Crispy seasoned boondi mixed with spices, curry leaves, and peanuts', 40.00, 4.4, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(19, 'Vada Pav', 'Mumbai-style spiced potato fritter in a soft bun with dry garlic chutney', 45.00, 4.5, '/FoodOrderingSystem/images/menu/food_parotta.png'),
(19, 'Sundal (Chickpea)', 'Boiled white chickpeas tempered with coconut, mustard, and dried chilies', 40.00, 4.3, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(19, 'Bhel Puri', 'Puffed rice tossed with chopped onion, tomato, sev, tamarind, and mint chutneys', 60.00, 4.5, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300');

-- 20. Zaitoon Arabian
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url) VALUES
(20, 'Chicken Mandi', 'Aromatic slow-cooked whole chicken served over fragrant mandi rice with salad', 480.00, 4.7, '/FoodOrderingSystem/images/menu/food_biryani.png'),
(20, 'Mutton Rogan Josh', 'Kashmiri aromatic slow-cooked mutton curry in Fennel and yogurt gravy', 390.00, 4.6, '/FoodOrderingSystem/images/menu/food_chettinad_curry.png'),
(20, 'Arabian Grilled Chicken (Half)', 'Arabic-style whole grilled chicken marinated in baharat, served with kuboos and garlic paste', 360.00, 4.5, 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=300'),
(20, 'Hummus with Kuboos', 'Creamy chickpea hummus drizzled with olive oil, paprika, and served with pita bread', 180.00, 4.4, 'https://images.unsplash.com/photo-1601050690117-94f5f6fa8bd7?w=300'),
(20, 'Umm Ali (Arabian Bread Pudding)', 'Egyptian dessert with puff pastry, nuts, raisins, and sweetened cream, baked golden', 160.00, 4.5, 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=300');


-- ============================================================
-- SEED DATA: Default Admin User
-- SHA-256 of "admin123" = 240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9
-- ============================================================
INSERT INTO users (name, username, password, email, phone, address, role) VALUES
('Admin User', 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'admin@foodapp.com', '9876543210', 'Chennai, Tamil Nadu', 'ADMIN');
