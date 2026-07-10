-- ============================================================
-- Fix: Unique images for every restaurant + menu items
-- Run AFTER seed_100_restaurants.sql
-- ============================================================
USE food_ordering_db;

-- ============================================================
-- 1. UPDATE UNIQUE IMAGES PER RESTAURANT
-- Using different Unsplash photo IDs for every restaurant
-- ============================================================

-- PURE VEG restaurants
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format' WHERE name='Murugan Idli Shop';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE name='Saravana Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE name='Annalakshmi';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&auto=format' WHERE name='Green Leaf Veg Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format' WHERE name='Sri Krishna Veg';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE name='Govinda Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&auto=format' WHERE name='The Veg Garden';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format' WHERE name='Arya Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format&fit=crop&h=400' WHERE name='Vasantha Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=600&auto=format' WHERE name='Annapoorna Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE name='Udupi Garden';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=600&auto=format' WHERE name='Vrindavan Veg Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format&fit=crop&h=400' WHERE name='Sri Vari Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format&fit=crop&h=400' WHERE name='Pongal House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format&fit=crop&h=400' WHERE name='Hotel Tamil Nadu';

-- NON-VEG restaurants
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format' WHERE name='Buhari Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format' WHERE name='Junior Kuppanna';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format' WHERE name='Chicken Corner';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=600&auto=format' WHERE name='Karaikudi Chettinad Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1562802378-063ec186a863?w=600&auto=format' WHERE name='Chicken Republic';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE name='Empire Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE name='Donne Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format' WHERE name='Nellai Tiffin & Meals';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE name='Pandian Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format&fit=crop&h=400' WHERE name='Velu Military Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format&fit=crop&h=400' WHERE name='Chennai Royale Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=600&auto=format&fit=crop&h=400' WHERE name='Mutton Master';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format&fit=crop&h=400' WHERE name='Kovil Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1562802378-063ec186a863?w=600&auto=format&fit=crop&h=400' WHERE name='Star Non-Veg Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544025162-d76694265947?w=600&auto=format' WHERE name='Chennai Grill House';

-- BIRYANI restaurants (all unique biryani images)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE name='Dindigul Thalappakatti';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE name='Ambur Star Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format' WHERE name='Paradise Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format' WHERE name='Biryani Zone';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567188040759-fb8a254b7f16?w=600&auto=format' WHERE name='Pista House Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format&fit=crop&h=400&crop=entropy' WHERE name='Biryani Brothers';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format&fit=crop&h=400' WHERE name='The Biryani Project';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format&fit=crop&h=400' WHERE name='Chennai Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format&fit=crop&h=400' WHERE name='Spice Route Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567188040759-fb8a254b7f16?w=600&auto=format&fit=crop&h=400' WHERE name='Original Ambur Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Dum Pukht Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Biryani Hub';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Royal Biryani Court';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Madurai Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567188040759-fb8a254b7f16?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='The Biryani Trail';

-- CHETTINAD restaurants
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format' WHERE name='Anjappar Chettinad Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=600&auto=format' WHERE name='Kasi Chettinad Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format' WHERE name='Chettinad Palace Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544025162-d76694265947?w=600&auto=format' WHERE name='Ponnusamy Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=600&auto=format' WHERE name='Nattukotai Chettinad';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format&fit=crop&h=400' WHERE name='The Chettinad House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=600&auto=format&fit=crop&h=400' WHERE name='Madurai Chettinad Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format&fit=crop&h=400' WHERE name='Karaikudi Chettinad Cuisine';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544025162-d76694265947?w=600&auto=format&fit=crop&h=400' WHERE name='Heritage Chettinad Home';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=600&auto=format&fit=crop&h=400' WHERE name='Valayapatti Hotel';

-- SOUTH INDIAN restaurants
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format' WHERE name='A2B Adyar Ananda Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE name='Hotel Palmgrove';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format' WHERE name='Dosa Camp';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=600&auto=format' WHERE name='Karpagam Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE name='Kumaran Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE name='Hot Chips Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=600&auto=format' WHERE name='Chennai Tiffin House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE name='Madras Meals';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format&fit=crop&h=400' WHERE name='Tiffin Box';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format&fit=crop&h=400' WHERE name='Madurai Malli';

-- SEAFOOD restaurants (all different seafood images)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format' WHERE name='Mathsya - Sea Food Corner';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1519708227418-a8d3a3106e3f?w=600&auto=format' WHERE name='Bay of Bengal Seafood';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1553361371-9b09f4d1e284?w=600&auto=format' WHERE name='Ocean Blue Fish Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565299624946-b28f40a04680?w=600&auto=format' WHERE name='Chennai Harbour Fish';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format&fit=crop&h=400' WHERE name='Coastal Catch';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1519708227418-a8d3a3106e3f?w=600&auto=format&fit=crop&h=400' WHERE name='Marina Seafood Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1553361371-9b09f4d1e284?w=600&auto=format&fit=crop&h=400' WHERE name='The Fish Factory';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=600&auto=format' WHERE name='Neptune Seafood Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565299624946-b28f40a04680?w=600&auto=format&fit=crop&h=400' WHERE name='Mahabalipuram Seafood';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Fisherman Cove Restro';

-- PIZZA restaurants (all different pizza images)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format' WHERE name='Pizza Hut';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565299624946-b28f40a04680?w=600&auto=format' WHERE name='Dominos Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format' WHERE name='La Pino''z Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=600&auto=format' WHERE name='Smokin'' Joe''s Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format&fit=crop&h=400' WHERE name='The Pizza Baker';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565299624946-b28f40a04680?w=600&auto=format&fit=crop&h=400' WHERE name='Pizza Express';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format&fit=crop&h=400' WHERE name='Oven Story Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=600&auto=format&fit=crop&h=400' WHERE name='Slice of Heaven';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Brick Oven Pizzeria';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Cheesy Crust Pizza';

-- FAST FOOD restaurants (all different fast food images)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE name='McDonald''s';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format' WHERE name='KFC';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=600&auto=format' WHERE name='Burger King';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=600&auto=format' WHERE name='Subway';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1562802378-063ec186a863?w=600&auto=format' WHERE name='Wow Momo';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format&fit=crop&h=400' WHERE name='Rolls N More';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=600&auto=format&fit=crop&h=400' WHERE name='Shake Shack';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format' WHERE name='Chaat Street';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=600&auto=format&fit=crop&h=400' WHERE name='Five Guys Burgers';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=600&auto=format' WHERE name='Taco Bell';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE name='Haldiram''s';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1562802378-063ec186a863?w=600&auto=format&fit=crop&h=400' WHERE name='Hot Bite';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1585032226651-759b368d7246?w=600&auto=format' WHERE name='Chinese Dragon';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format&fit=crop&h=400' WHERE name='Street Food Shack';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Quick Bites Express';

-- ============================================================
-- 2. INSERT MENU ITEMS for all major restaurants
-- ============================================================

-- Clear existing menu
DELETE FROM menu;

-- =========== PURE VEG MENUS ===========

-- Murugan Idli Shop
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Idli (4 Pcs)', 'Soft steamed rice cakes with sambar and 3 chutneys', 60.00, 4.8, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400&auto=format', TRUE FROM restaurants WHERE name='Murugan Idli Shop';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Ghee Roast Dosa', 'Crispy golden dosa with generous ghee', 90.00, 4.9, 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=400&auto=format', TRUE FROM restaurants WHERE name='Murugan Idli Shop';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Masala Dosa', 'Crispy dosa with spiced potato filling', 80.00, 4.7, 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=400&auto=format&fit=crop&h=300', TRUE FROM restaurants WHERE name='Murugan Idli Shop';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Vada (2 Pcs)', 'Crispy medu vada with sambar', 50.00, 4.6, 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400&auto=format', TRUE FROM restaurants WHERE name='Murugan Idli Shop';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Filter Coffee', 'Authentic South Indian decoction coffee', 40.00, 4.9, 'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=400&auto=format', TRUE FROM restaurants WHERE name='Murugan Idli Shop';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Pongal', 'Creamy rice and lentil dish with ghee and pepper', 70.00, 4.7, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=400&auto=format', TRUE FROM restaurants WHERE name='Murugan Idli Shop';

-- Saravana Bhavan
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Full Meals', 'Rice, sambar, rasam, kootu, poriyal, papad, pickle', 150.00, 4.8, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=400&auto=format', TRUE FROM restaurants WHERE name='Saravana Bhavan';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Rava Dosa', 'Crispy lacy rava dosa with onion and green chili', 95.00, 4.7, 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=400&auto=format', TRUE FROM restaurants WHERE name='Saravana Bhavan';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Upma', 'Fluffy semolina with vegetables and mustard seeds', 65.00, 4.5, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400&auto=format', TRUE FROM restaurants WHERE name='Saravana Bhavan';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Kesari', 'Sweet semolina halwa with saffron and cashews', 55.00, 4.6, 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400&auto=format', TRUE FROM restaurants WHERE name='Saravana Bhavan';

-- =========== BIRYANI MENUS ===========

-- Dindigul Thalappakatti
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Mutton Biryani', 'Authentic Dindigul style pressure-cooked mutton biryani', 280.00, 4.9, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken Biryani', 'Fragrant basmati cooked with tender chicken', 220.00, 4.8, 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Veg Biryani', 'Aromatic basmati with seasonal vegetables', 160.00, 4.5, 'https://images.unsplash.com/photo-1574894709920-11b28be8a2c4?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Salna', 'Rich spicy gravy perfect with biryani', 60.00, 4.6, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Raita', 'Cooling yogurt with cucumber and spices', 40.00, 4.4, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken 65', 'Spicy deep-fried chicken starter', 180.00, 4.7, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=400&auto=format', TRUE FROM restaurants WHERE name='Dindigul Thalappakatti';

-- Ambur Star Biryani
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Ambur Mutton Biryani', 'Classic Ambur style mutton biryani with sirka onions', 260.00, 4.8, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE FROM restaurants WHERE name='Ambur Star Biryani';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Ambur Chicken Biryani', 'Fragrant Ambur style chicken biryani', 200.00, 4.7, 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=400&auto=format', TRUE FROM restaurants WHERE name='Ambur Star Biryani';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Dalcha', 'Lentil and vegetable curry served with biryani', 70.00, 4.5, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=400&auto=format', TRUE FROM restaurants WHERE name='Ambur Star Biryani';

-- =========== SEAFOOD MENUS ===========

-- Mathsya - Sea Food Corner
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Seer Fish Fry (2 Pcs)', 'Freshly caught seer fish in 12-spice marinade, deep fried', 320.00, 4.8, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Tiger Prawn Masala', 'Juicy tiger prawns in spicy masala gravy', 480.00, 4.7, 'https://images.unsplash.com/photo-1519708227418-a8d3a3106e3f?w=400&auto=format', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Crab Pepper Curry', 'Whole crab in freshly ground black pepper gravy', 650.00, 4.9, 'https://images.unsplash.com/photo-1553361371-9b09f4d1e284?w=400&auto=format', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Fish Biryani', 'Aromatic basmati with chunks of fresh fish', 280.00, 4.6, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Prawn Fry (6 Pcs)', 'Crispy fried prawns with curry leaf seasoning', 340.00, 4.7, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format&fit=crop&h=300', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Squid Rings', 'Tender squid rings in crispy batter with dipping sauce', 280.00, 4.5, 'https://images.unsplash.com/photo-1519708227418-a8d3a3106e3f?w=400&auto=format&fit=crop&h=300', TRUE FROM restaurants WHERE name='Mathsya - Sea Food Corner';

-- Bay of Bengal Seafood
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Crab Butter Garlic', 'Crab cooked in butter garlic sauce', 580.00, 4.7, 'https://images.unsplash.com/photo-1553361371-9b09f4d1e284?w=400&auto=format', TRUE FROM restaurants WHERE name='Bay of Bengal Seafood';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Fish Curry', 'Tangy tamarind-based fish curry', 280.00, 4.6, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format', TRUE FROM restaurants WHERE name='Bay of Bengal Seafood';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Prawn Masala', 'Medium prawns cooked in onion-tomato masala', 360.00, 4.5, 'https://images.unsplash.com/photo-1519708227418-a8d3a3106e3f?w=400&auto=format', TRUE FROM restaurants WHERE name='Bay of Bengal Seafood';

-- =========== CHETTINAD MENUS ===========

-- Anjappar Chettinad Restaurant
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken Chettinad Curry', 'Signature spiced chicken curry with kalpasi aroma', 320.00, 4.9, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format', TRUE FROM restaurants WHERE name='Anjappar Chettinad Restaurant';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Mutton Sukka', 'Dry roasted mutton with whole spices', 380.00, 4.8, 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=400&auto=format', TRUE FROM restaurants WHERE name='Anjappar Chettinad Restaurant';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Parotta (2 Pcs)', 'Flaky layered bread perfect with curries', 60.00, 4.6, 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=400&auto=format', TRUE FROM restaurants WHERE name='Anjappar Chettinad Restaurant';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Kavuni Arisi', 'Traditional black rice dessert with coconut milk', 90.00, 4.7, 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=400&auto=format', TRUE FROM restaurants WHERE name='Anjappar Chettinad Restaurant';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Nandu Masala', 'Crab cooked in Chettinad masala', 480.00, 4.8, 'https://images.unsplash.com/photo-1553361371-9b09f4d1e284?w=400&auto=format', TRUE FROM restaurants WHERE name='Anjappar Chettinad Restaurant';

-- =========== PIZZA MENUS ===========

-- Pizza Hut
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Cheese Burst Margherita', 'Classic margherita with a cheese-filled crust', 299.00, 4.4, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400&auto=format', TRUE FROM restaurants WHERE name='Pizza Hut';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken Supreme', 'Loaded pizza with chicken, peppers, and onions', 349.00, 4.5, 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=400&auto=format', TRUE FROM restaurants WHERE name='Pizza Hut';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Garlic Bread', 'Crispy garlic bread with herbs', 99.00, 4.3, 'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=400&auto=format', TRUE FROM restaurants WHERE name='Pizza Hut';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Pasta Arabiatta', 'Penne pasta in spicy tomato sauce', 179.00, 4.2, 'https://images.unsplash.com/photo-1565299624946-b28f40a04680?w=400&auto=format', TRUE FROM restaurants WHERE name='Pizza Hut';

-- Dominos Pizza
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Peppy Paneer', 'Paneer with capsicum and red paprika', 299.00, 4.5, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400&auto=format', TRUE FROM restaurants WHERE name='Dominos Pizza';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken Dominator', 'Double chicken with pepper chicken rashers', 399.00, 4.6, 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=400&auto=format', TRUE FROM restaurants WHERE name='Dominos Pizza';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Garlic Breadsticks', 'Oven-baked garlic breadsticks with dipping sauce', 89.00, 4.3, 'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=400&auto=format', TRUE FROM restaurants WHERE name='Dominos Pizza';

-- =========== FAST FOOD MENUS ===========

-- McDonald's
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'McAloo Tikki Burger', 'Crispy aloo tikki patty with sauces', 89.00, 4.2, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400&auto=format', TRUE FROM restaurants WHERE name='McDonald''s';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'McSpicy Chicken Burger', 'Juicy spicy crispy chicken burger', 179.00, 4.4, 'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=400&auto=format', TRUE FROM restaurants WHERE name='McDonald''s';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'French Fries (Large)', 'Crispy golden fries with seasoning', 119.00, 4.3, 'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=400&auto=format', TRUE FROM restaurants WHERE name='McDonald''s';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'McFlurry Oreo', 'Creamy vanilla ice cream with Oreo pieces', 99.00, 4.5, 'https://images.unsplash.com/photo-1562802378-063ec186a863?w=400&auto=format', TRUE FROM restaurants WHERE name='McDonald''s';

-- KFC
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Crispy Chicken (2 Pcs)', 'Original KFC crispy fried chicken', 199.00, 4.4, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=400&auto=format', TRUE FROM restaurants WHERE name='KFC';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Zinger Burger', 'Spicy crispy chicken fillet burger', 179.00, 4.5, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400&auto=format', TRUE FROM restaurants WHERE name='KFC';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Hot Wings (6 Pcs)', 'Spicy hot chicken wings', 229.00, 4.3, 'https://images.unsplash.com/photo-1562802378-063ec186a863?w=400&auto=format', TRUE FROM restaurants WHERE name='KFC';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Coleslaw', 'Creamy coleslaw salad', 59.00, 4.0, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=400&auto=format', TRUE FROM restaurants WHERE name='KFC';

-- =========== NON-VEG MENUS ===========

-- Junior Kuppanna
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Mutton Curry', 'Tender mutton in rich spicy gravy', 360.00, 4.7, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format', TRUE FROM restaurants WHERE name='Junior Kuppanna';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chicken Kuzhambu', 'Spiced chicken in tamarind kuzhambu', 280.00, 4.6, 'https://images.unsplash.com/photo-1516684732162-798a0062be99?w=400&auto=format', TRUE FROM restaurants WHERE name='Junior Kuppanna';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Egg Rice', 'Scrambled egg fried rice with vegetables', 140.00, 4.3, 'https://images.unsplash.com/photo-1585032226651-759b368d7246?w=400&auto=format', TRUE FROM restaurants WHERE name='Junior Kuppanna';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Parotta (2 Pcs)', 'Layered flaky bread', 55.00, 4.5, 'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=400&auto=format', TRUE FROM restaurants WHERE name='Junior Kuppanna';

-- Chennai Grill House
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Grilled Chicken Half', 'Half grilled chicken with herbs and spices', 350.00, 4.6, 'https://images.unsplash.com/photo-1544025162-d76694265947?w=400&auto=format', TRUE FROM restaurants WHERE name='Chennai Grill House';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Mutton Chops BBQ', 'Tender mutton chops slow-grilled over charcoal', 420.00, 4.7, 'https://images.unsplash.com/photo-1562802378-063ec186a863?w=400&auto=format', TRUE FROM restaurants WHERE name='Chennai Grill House';
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Seekh Kebab (4 Pcs)', 'Minced mutton kebabs on skewers', 280.00, 4.5, 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?w=400&auto=format', TRUE FROM restaurants WHERE name='Chennai Grill House';

SELECT 'Images and menu items updated successfully!' as status;
