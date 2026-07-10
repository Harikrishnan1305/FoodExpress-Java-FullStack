-- ============================================================
-- FoodExpress – 100+ Restaurants Seed Data
-- Run this AFTER schema_new.sql
-- Categories: Pure Veg, Non-Veg, Biryani, Chettinad, 
--             South Indian, Seafood, Pizza, Fast Food
-- ============================================================
USE food_ordering_db;

-- Clear existing data cleanly
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE order_items;
TRUNCATE TABLE orders;
TRUNCATE TABLE menu;
TRUNCATE TABLE restaurants;
SET FOREIGN_KEY_CHECKS = 1;

-- ============================================================
-- PURE VEG RESTAURANTS (15 restaurants)
-- ============================================================
INSERT INTO restaurants (name, cuisine, rating, delivery_time, image_url, is_active) VALUES
('Murugan Idli Shop', 'Pure Veg, South Indian, Idli, Dosa', 4.7, 20, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Saravana Bhavan', 'Pure Veg, South Indian, Meals, Tiffin', 4.8, 25, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Annalakshmi', 'Pure Veg, South Indian, Chettinad, Meals', 4.6, 30, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Green Leaf Veg Restaurant', 'Pure Veg, North Indian, Paneer, Dal', 4.5, 28, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Sri Krishna Veg', 'Pure Veg, South Indian, Pongal, Sambar', 4.3, 22, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Govinda Bhavan', 'Pure Veg, South Indian, Meals, Rasam', 4.4, 30, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('The Veg Garden', 'Pure Veg, Continental, Salads, Sandwiches', 4.2, 35, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&auto=format', TRUE),
('Arya Bhavan', 'Pure Veg, South Indian, Tiffin, Coffee', 4.5, 18, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Vasantha Bhavan', 'Pure Veg, South Indian, Idli, Vada', 4.6, 20, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Annapoorna Hotel', 'Pure Veg, South Indian, Meals, Thali', 4.4, 25, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Udupi Garden', 'Pure Veg, Udupi, Dosa, Upma', 4.5, 22, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Vrindavan Veg Kitchen', 'Pure Veg, North Indian, Rajma, Chole', 4.3, 30, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Sri Vari Mess', 'Pure Veg, South Indian, Full Meals, Rasam', 4.4, 25, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Pongal House', 'Pure Veg, South Indian, Pongal, Kara Kuzhambhu', 4.6, 18, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Hotel Tamil Nadu', 'Pure Veg, South Indian, Meals, Parotta', 4.5, 20, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),

-- ============================================================
-- NON-VEG RESTAURANTS (15 restaurants)
-- ============================================================
('Buhari Hotel', 'Non-Veg, Chicken, Mutton, Biryani', 4.6, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Junior Kuppanna', 'Non-Veg, Chettinad, Chicken, Mutton', 4.7, 35, 'https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format', TRUE),
('Chicken Corner', 'Non-Veg, Chicken Fry, Wings, Grilled', 4.3, 25, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format', TRUE),
('Karaikudi Chettinad Kitchen', 'Non-Veg, Chettinad, Chicken Curry, Mutton Curry', 4.5, 30, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Chicken Republic', 'Non-Veg, Fried Chicken, Burger, Fast Food', 4.2, 20, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format', TRUE),
('Empire Restaurant', 'Non-Veg, Biryani, Chicken 65, Kebab', 4.5, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Donne Biryani House', 'Non-Veg, Biryani, Chicken Curry', 4.6, 25, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Nellai Tiffin & Meals', 'Non-Veg, South Indian, Chicken Kuzhambu, Mutton', 4.4, 28, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Pandian Mess', 'Non-Veg, South Indian, Fish Curry, Chicken', 4.3, 25, 'https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format', TRUE),
('Velu Military Hotel', 'Non-Veg, Military Hotel, Mutton Kheema, Brain Fry', 4.4, 30, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format', TRUE),
('Chennai Royale Kitchen', 'Non-Veg, Biryani, Chicken 65, Kebab, Tikka', 4.5, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Mutton Master', 'Non-Veg, Mutton, Biryani, Liver Fry', 4.4, 40, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Kovil Mess', 'Non-Veg, South Indian, Chicken Curry, Egg Omelette', 4.2, 22, 'https://images.unsplash.com/photo-1516684732162-798a0062be99?w=600&auto=format', TRUE),
('Star Non-Veg Hotel', 'Non-Veg, Chicken, Mutton Chops, Egg Rice', 4.3, 25, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format', TRUE),
('Chennai Grill House', 'Non-Veg, Grilled, Barbecue, Chicken, Mutton', 4.6, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),

-- ============================================================
-- BIRYANI RESTAURANTS (15 restaurants)
-- ============================================================
('Dindigul Thalappakatti', 'Biryani, Non-Veg, Mutton Biryani, Chicken', 4.8, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Ambur Star Biryani', 'Biryani, Non-Veg, Ambur Style, Dalcha', 4.7, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Paradise Biryani', 'Biryani, Non-Veg, Hyderabadi, Dum Biryani', 4.6, 40, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Biryani Zone', 'Biryani, Chicken Biryani, Veg Biryani, Prawns', 4.5, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Pista House Biryani', 'Biryani, Non-Veg, Haleem, Dum Biryani', 4.5, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Biryani Brothers', 'Biryani, Chicken, Mutton, Veg Options', 4.4, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('The Biryani Project', 'Biryani, Lucknowi, Hyderabadi, Kolkata Style', 4.6, 45, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Chennai Biryani House', 'Biryani, Chicken Biryani, Salna, Raita', 4.5, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Spice Route Biryani', 'Biryani, Non-Veg, Chettinad Biryani, Mutton', 4.4, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Original Ambur Biryani', 'Biryani, Ambur Style, Non-Veg, Chicken', 4.7, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Dum Pukht Biryani', 'Biryani, Hyderabadi Dum, Mutton, Chicken', 4.5, 40, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Biryani Hub', 'Biryani, Express Biryani, Chicken, Egg', 4.3, 25, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Royal Biryani Court', 'Biryani, Nawabi, Dum, Mutton Korma', 4.6, 40, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('Madurai Biryani House', 'Biryani, Non-Veg, Madurai Style, Chicken', 4.5, 30, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),
('The Biryani Trail', 'Biryani, Multi-Style, Chicken, Vegetable', 4.4, 35, 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format', TRUE),

-- ============================================================
-- CHETTINAD RESTAURANTS (10 restaurants)
-- ============================================================
('Anjappar Chettinad Restaurant', 'Chettinad, Non-Veg, Chicken Chettinad, Mutton', 4.7, 35, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Kasi Chettinad Kitchen', 'Chettinad, Non-Veg, Spicy Chicken, Mutton Sukka', 4.5, 30, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Chettinad Palace Restaurant', 'Chettinad, Heritage, Non-Veg, Paniyaram, Kuzhambu', 4.6, 35, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Ponnusamy Hotel', 'Chettinad, Non-Veg, Chicken, Mutton, Biryani', 4.5, 30, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Nattukotai Chettinad', 'Chettinad, Heritage, Non-Veg, Kavuni Arisi', 4.4, 40, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('The Chettinad House', 'Chettinad, Fine Dining, Non-Veg, Traditional', 4.8, 45, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Madurai Chettinad Mess', 'Chettinad, Non-Veg, Kari Dosa, Mutton Curry', 4.3, 30, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Karaikudi Chettinad Cuisine', 'Chettinad, Non-Veg, Meen Kuzhambhu, Pepper Chicken', 4.6, 35, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Heritage Chettinad Home', 'Chettinad, Non-Veg, Traditional Cooking, Appam', 4.5, 40, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),
('Valayapatti Hotel', 'Chettinad, Non-Veg, Village Style, Mutton Kheema', 4.4, 30, 'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=600&auto=format', TRUE),

-- ============================================================
-- SOUTH INDIAN RESTAURANTS (10 restaurants)
-- ============================================================
('A2B Adyar Ananda Bhavan', 'South Indian, Pure Veg, Sweets, Snacks, Meals', 4.7, 25, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Hotel Palmgrove', 'South Indian, Meals, Veg, Non-Veg, Seafood', 4.6, 30, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Dosa Camp', 'South Indian, Dosa, Idli, Filter Coffee', 4.5, 20, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Karpagam Hotel', 'South Indian, Non-Veg, Parotta, Chicken Curry', 4.4, 22, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Kumaran Mess', 'South Indian, Pure Veg, Full Meals, Sambar', 4.5, 25, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Hot Chips Restaurant', 'South Indian, Snacks, Meals, Non-Veg', 4.3, 20, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Chennai Tiffin House', 'South Indian, Tiffin, Idiyappam, Appam', 4.4, 22, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Madras Meals', 'South Indian, Banana Leaf, Full Meals, Rasam', 4.6, 25, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format', TRUE),
('Tiffin Box', 'South Indian, Tiffin, Upma, Pongal, Coffee', 4.3, 18, 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format', TRUE),
('Madurai Malli', 'South Indian, Non-Veg, Kotthu, Parotta', 4.5, 28, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),

-- ============================================================
-- SEAFOOD RESTAURANTS (10 restaurants)
-- ============================================================
('Mathsya - Sea Food Corner', 'Seafood, Non-Veg, Fish, Prawns, Crab, Lobster', 4.7, 35, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Bay of Bengal Seafood', 'Seafood, Non-Veg, Crab, Fish Fry, Prawn Masala', 4.6, 40, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Ocean Blue Fish Restaurant', 'Seafood, Non-Veg, Fresh Fish, Grilled, Fried', 4.5, 35, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Chennai Harbour Fish', 'Seafood, Non-Veg, Seer Fish, Pomfret, Tuna', 4.4, 30, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Coastal Catch', 'Seafood, Non-Veg, Kerala Style, Crab, Fish', 4.6, 40, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Marina Seafood Kitchen', 'Seafood, Non-Veg, Grilled Prawns, Fish Biryani', 4.5, 35, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('The Fish Factory', 'Seafood, Non-Veg, Fish Fry, Prawn Biryani, Crab', 4.4, 30, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Neptune Seafood Restaurant', 'Seafood, Non-Veg, Lobster, Tiger Prawns, Sea Bass', 4.7, 45, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Mahabalipuram Seafood', 'Seafood, Non-Veg, Fresh Catch, Grilled, Masala', 4.5, 35, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),
('Fisherman Cove Restro', 'Seafood, Non-Veg, Kerala Fish Curry, Meen Pollichathu', 4.6, 40, 'https://images.unsplash.com/photo-1559847844-5315695dadae?w=600&auto=format', TRUE),

-- ============================================================
-- PIZZA RESTAURANTS (10 restaurants)
-- ============================================================
('Pizza Hut', 'Pizza, Fast Food, Pasta, Cheese Burst', 4.3, 30, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Dominos Pizza', 'Pizza, Fast Food, Garlic Bread, Dips', 4.4, 25, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('La Pino''z Pizza', 'Pizza, Italian, Stuffed Crust, Veg, Non-Veg', 4.3, 30, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Smokin'' Joe''s Pizza', 'Pizza, Veg, Non-Veg, Pasta, Wings', 4.2, 35, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('The Pizza Baker', 'Pizza, Artisan, Wood-Fired, Thin Crust', 4.5, 40, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Pizza Express', 'Pizza, Italian, Classic, Veg, Non-Veg', 4.4, 30, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Oven Story Pizza', 'Pizza, Non-Veg, Chicken, BBQ, Peri Peri', 4.5, 35, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Slice of Heaven', 'Pizza, Veg, Thin Crust, Fusion, Cheese', 4.3, 30, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Brick Oven Pizzeria', 'Pizza, Italian, Wood-Fired, Margherita', 4.6, 45, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),
('Cheesy Crust Pizza', 'Pizza, Loaded, Cheese Burst, Non-Veg', 4.2, 30, 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format', TRUE),

-- ============================================================
-- FAST FOOD RESTAURANTS (15 restaurants)
-- ============================================================
('McDonald''s', 'Fast Food, Burger, Fries, Mcflurry, Veg, Non-Veg', 4.2, 20, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('KFC', 'Fast Food, Fried Chicken, Burger, Wings, Non-Veg', 4.3, 20, 'https://images.unsplash.com/photo-1598514983318-2f64f8f4796c?w=600&auto=format', TRUE),
('Burger King', 'Fast Food, Burger, Whopper, Fries, Non-Veg', 4.2, 22, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Subway', 'Fast Food, Sandwiches, Wraps, Veg, Non-Veg', 4.1, 20, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Wow Momo', 'Fast Food, Momos, Dimsums, Thukpa, Non-Veg', 4.3, 25, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Rolls N More', 'Fast Food, Kathi Rolls, Frankie, Wraps', 4.2, 18, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Shake Shack', 'Fast Food, Burgers, Shakes, Hotdog, Non-Veg', 4.5, 30, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Chaat Street', 'Fast Food, Chaat, Pani Puri, Bhel, Veg', 4.2, 20, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Five Guys Burgers', 'Fast Food, Burgers, Milkshakes, Non-Veg', 4.4, 30, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Taco Bell', 'Fast Food, Tacos, Wraps, Nachos, Veg', 4.1, 25, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Haldiram''s', 'Fast Food, Snacks, Sweets, Veg, North Indian', 4.4, 22, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format', TRUE),
('Hot Bite', 'Fast Food, Chicken Fried, Wraps, Veg, Non-Veg', 4.1, 20, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Chinese Dragon', 'Fast Food, Chinese, Fried Rice, Noodles, Non-Veg', 4.3, 25, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Street Food Shack', 'Fast Food, Veg, Sandwiches, Corn, Bhaji', 4.2, 18, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE),
('Quick Bites Express', 'Fast Food, Veg, Non-Veg, Burgers, Rolls, Wraps', 4.0, 15, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format', TRUE);

-- ============================================================
-- SAMPLE MENU ITEMS (for key restaurants)
-- Mathsya Sea Food Corner (ID will be auto-assigned around 71+)
-- ============================================================
-- Menu items for Murugan Idli Shop (ID 1)
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Idli (4 Pcs)', 'Soft steamed rice cakes served with sambar and coconut chutney', 60.00, 4.8,
'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Murugan Idli Shop';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Ghee Roast Dosa', 'Crispy golden dosa smeared with ghee, served with 3 chutneys', 90.00, 4.9,
'https://images.unsplash.com/photo-1630383249896-424e482df921?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Murugan Idli Shop';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Filter Coffee', 'Traditional decoction coffee with full cream milk', 40.00, 4.9,
'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Murugan Idli Shop';

-- Menu for Dindigul Thalappakatti
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Mutton Biryani', 'Authentic Dindigul style pressure cooked mutton biryani', 280.00, 4.9,
'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Dindigul Thalappakatti';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Chicken Biryani', 'Fragrant basmati rice cooked with tender chicken pieces', 220.00, 4.8,
'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Dindigul Thalappakatti';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Raita', 'Cooling yogurt with cucumber and spices', 40.00, 4.5,
'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Dindigul Thalappakatti';

-- Menu for Mathsya Sea Food Corner
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Seer Fish Fry (2 Pcs)', 'Freshly caught seer fish marinated in 12 spices and deep fried', 320.00, 4.8,
'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Mathsya - Sea Food Corner';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Tiger Prawn Masala', 'Juicy tiger prawns cooked in a spicy masala gravy', 480.00, 4.7,
'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Mathsya - Sea Food Corner';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Crab Pepper Curry', 'Whole crab cooked in freshly ground black pepper gravy', 650.00, 4.9,
'https://images.unsplash.com/photo-1559847844-5315695dadae?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Mathsya - Sea Food Corner';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Fish Biryani', 'Aromatic basmati rice cooked with chunks of fresh fish', 280.00, 4.6,
'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Mathsya - Sea Food Corner';

-- Menu for Anjappar Chettinad
INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Chicken Chettinad Curry', 'Signature Chettinad spiced chicken curry with kalpasi aroma', 320.00, 4.9,
'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Anjappar Chettinad Restaurant';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Mutton Sukka', 'Dry roasted mutton with freshly ground whole spices', 380.00, 4.8,
'https://images.unsplash.com/photo-1603894584373-5ac82b2ae398?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Anjappar Chettinad Restaurant';

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT r.id, 'Parotta (2 Pcs)', 'Flaky layered bread perfect with Chettinad curries', 60.00, 4.6,
'https://images.unsplash.com/photo-1599487488170-d11ec9c172f0?w=400&auto=format', TRUE
FROM restaurants r WHERE r.name = 'Anjappar Chettinad Restaurant';

-- ============================================================
SELECT 'Seed data inserted successfully!' as status;
