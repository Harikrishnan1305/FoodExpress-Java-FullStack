USE food_ordering_db;

-- ============================================================
-- FIX 1: UPDATE RESTAURANT IMAGES (Cuisine-matched Unsplash)
-- ============================================================
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format' WHERE id=1;  -- Murugan Idli Shop - idli/dosa
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1600891964092-4316c288032e?w=600&auto=format' WHERE id=2;  -- Saravana Bhavan - south indian meals
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE id=3;  -- Annalakshmi - chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format' WHERE id=4;  -- Green Leaf Veg - north indian
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=5;  -- Sri Krishna Veg
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE id=6;  -- Govinda Bhavan
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=600&auto=format' WHERE id=7;  -- The Veg Garden - salads
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format' WHERE id=8;  -- Arya Bhavan - dosa
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE id=9;  -- Vasantha Bhavan - vada
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE id=10; -- Annapoorna Hotel
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format' WHERE id=11; -- Udupi Garden - dosa upma
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=600&auto=format' WHERE id=12; -- Vrindavan Veg - north indian
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE id=13; -- Sri Vari Mess - full meals
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE id=14; -- Pongal House - pongal
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=15; -- Hotel Tamil Nadu - parotta
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=600&auto=format' WHERE id=16; -- Buhari Hotel - biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=17; -- Junior Kuppanna - chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=600&auto=format' WHERE id=18; -- Chicken Corner - grilled
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=19; -- Karaikudi Chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=600&auto=format' WHERE id=20; -- Chicken Republic - chicken
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=21; -- Empire Restaurant - biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=22; -- Donne Biryani House
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format' WHERE id=23; -- Nellai Tiffin
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=600&auto=format' WHERE id=24; -- Pandian Mess
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=25; -- Velu Military Hotel
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=26; -- Chennai Royale Kitchen
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=600&auto=format' WHERE id=27; -- Mutton Master
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=600&auto=format' WHERE id=28; -- Kovil Mess
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=600&auto=format' WHERE id=29; -- Star Non-Veg Hotel
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600&auto=format' WHERE id=30; -- Chennai Grill House - BBQ
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=31; -- Dindigul Thalappakatti
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=32; -- Ambur Star Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=33; -- Paradise Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=34; -- Biryani Zone
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=35; -- Pista House Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=36; -- Biryani Brothers
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=37; -- The Biryani Project
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=38; -- Chennai Biryani House
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=39; -- Spice Route Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=40; -- Original Ambur Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=41; -- Dum Pukht Biryani
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=42; -- Biryani Hub
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=43; -- Royal Biryani Court
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=600&auto=format' WHERE id=44; -- Madurai Biryani House
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=600&auto=format' WHERE id=45; -- The Biryani Trail
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=46; -- Anjappar Chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=600&auto=format' WHERE id=47; -- Kasi Chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=48; -- Chettinad Palace
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=600&auto=format' WHERE id=49; -- Ponnusamy Hotel
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=50; -- Nattukotai Chettinad
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=600&auto=format' WHERE id=51; -- The Chettinad House
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=52; -- Madurai Chettinad Mess
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=600&auto=format' WHERE id=53; -- Karaikudi Chettinad Cuisine
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=600&auto=format' WHERE id=54; -- Heritage Chettinad Home
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1582878826629-29b7ad1cdc43?w=600&auto=format' WHERE id=55; -- Valayapatti Hotel
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format' WHERE id=56; -- A2B Adyar Ananda Bhavan - sweets
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE id=57; -- Hotel Palmgrove - meals
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=600&auto=format' WHERE id=58; -- Dosa Camp - dosa
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=59; -- Karpagam Hotel - parotta
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE id=60; -- Kumaran Mess - full meals
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=600&auto=format' WHERE id=61; -- Hot Chips Restaurant
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=600&auto=format' WHERE id=62; -- Chennai Tiffin House - tiffin
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=600&auto=format' WHERE id=63; -- Madras Meals - banana leaf
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=600&auto=format' WHERE id=64; -- Tiffin Box - upma pongal
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=65; -- Madurai Malli - kotthu parotta
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&auto=format' WHERE id=66; -- Mathsya - seafood fish
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=600&auto=format' WHERE id=67; -- Bay of Bengal - crab
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&auto=format' WHERE id=68; -- Ocean Blue Fish
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=600&auto=format' WHERE id=69; -- Chennai Harbour Fish
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&auto=format' WHERE id=70; -- Coastal Catch
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=600&auto=format' WHERE id=71; -- Marina Seafood
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&auto=format' WHERE id=72; -- The Fish Factory
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=600&auto=format' WHERE id=73; -- Neptune Seafood
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=600&auto=format' WHERE id=74; -- Mahabalipuram Seafood
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=600&auto=format' WHERE id=75; -- Fisherman Cove
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&auto=format' WHERE id=76; -- Pizza Hut
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format' WHERE id=77; -- Dominos Pizza
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format' WHERE id=78; -- La Pino'z Pizza
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&auto=format' WHERE id=79; -- Smokin Joe's Pizza
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format' WHERE id=80; -- The Pizza Baker
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format' WHERE id=81; -- Pizza Express
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&auto=format' WHERE id=82; -- Oven Story Pizza
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=600&auto=format' WHERE id=83; -- Slice of Heaven
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=600&auto=format' WHERE id=84; -- Brick Oven Pizzeria
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=600&auto=format' WHERE id=85; -- Cheesy Crust Pizza
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE id=86; -- McDonald's - burger
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=600&auto=format' WHERE id=87; -- KFC - fried chicken
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE id=88; -- Burger King
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=600&auto=format' WHERE id=89; -- Subway - sandwich
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1563245372-f21724e3856d?w=600&auto=format' WHERE id=90; -- Wow Momo - momos
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=600&auto=format' WHERE id=91; -- Rolls N More - rolls
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE id=92; -- Shake Shack
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=93; -- Chaat Street - street food
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE id=94; -- Five Guys Burgers
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=600&auto=format' WHERE id=95; -- Taco Bell
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1630383249896-424e482df921?w=600&auto=format' WHERE id=96; -- Haldiram's - sweets snacks
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=600&auto=format' WHERE id=97; -- Hot Bite
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=600&auto=format' WHERE id=98; -- Chinese Dragon - noodles
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&auto=format' WHERE id=99; -- Street Food Shack
UPDATE restaurants SET image_url = 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=600&auto=format' WHERE id=100; -- Quick Bites Express

-- ============================================================
-- FIX 2: DELETE ALL EXISTING GENERIC MENU ITEMS & REPLACE
-- ============================================================
DELETE FROM menu;

-- Reset auto-increment
ALTER TABLE menu AUTO_INCREMENT = 1;

-- ============================================================
-- RESTAURANT 1: Murugan Idli Shop (Pure Veg, South Indian)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(1,'Idli (4 Pcs)','Soft steamed idlis with sambar and three chutneys',60,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(1,'Ghee Roast Dosa','Crispy dosa roasted with generous ghee, served with sambar',90,'Tiffin',1,4.9,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(1,'Medu Vada (2 Pcs)','Crispy lentil donuts with sambar and coconut chutney',50,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(1,'Masala Dosa','Golden dosa stuffed with spiced potato filling',80,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(1,'Pongal','Creamy rice and moong dal with pepper and ghee',70,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(1,'Filter Coffee','Authentic South Indian filter coffee in a traditional dabarah',30,'Beverages',1,4.9,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format');

-- ============================================================
-- RESTAURANT 2: Saravana Bhavan (Pure Veg, South Indian)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(2,'Full Meals','Rice, sambar, rasam, kootu, poriyal, papad, pickle',150,'Meals',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(2,'Rava Dosa','Crispy lacy rava dosa with onion and green chili',95,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(2,'Kesari','Sweet semolina halwa with saffron and cashews',55,'Sweets',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(2,'Upma','Fluffy semolina with vegetables and mustard seeds',65,'Tiffin',1,4.5,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(2,'Chapati with Kurma','2 soft wheat chapatis with mixed vegetable kurma',80,'Meals',1,4.7,'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=500&auto=format'),
(2,'Poori Masala','3 fluffy pooris with potato masala',85,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format');

-- ============================================================
-- RESTAURANT 3: Annalakshmi (Pure Veg, Chettinad)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(3,'Chettinad Vegetable Curry','Aromatic chettinad spiced vegetable curry',120,'Mains',1,4.7,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(3,'Kara Kuzhambu','Tangy and spicy tamarind based curry',110,'Mains',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(3,'Paniyaram','Crispy outside soft inside rice lentil dumplings',70,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(3,'Appam with Stew','Lacy rice hoppers with vegetable coconut stew',90,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(3,'Chettinad Full Meals','Traditional chettinad meals on banana leaf',180,'Meals',1,4.9,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format');

-- ============================================================
-- RESTAURANT 4: Green Leaf Veg (Pure Veg, North Indian)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(4,'Paneer Butter Masala','Soft paneer in rich buttery tomato gravy',180,'Mains',1,4.8,'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=500&auto=format'),
(4,'Dal Makhani','Creamy black lentils slow cooked overnight',140,'Mains',1,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(4,'Butter Naan','Soft fluffy naan brushed with butter',40,'Breads',1,4.6,'https://images.unsplash.com/photo-1605888969566-8e509e0e0b9d?w=500&auto=format'),
(4,'Chole Bhature','Spicy chickpea curry with puffed fried bread',130,'Mains',1,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(4,'Veg Biryani','Fragrant basmati rice with mixed vegetables and spices',160,'Biryani',1,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(4,'Gulab Jamun (2 Pcs)','Soft milk solid dumplings in rose sugar syrup',60,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format');

-- ============================================================
-- RESTAURANT 5: Sri Krishna Veg
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(5,'Ven Pongal','Pepper and ghee flavored rice with moong dal',70,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(5,'Sambar Vada','Crispy vadas soaked in hot sambar',65,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(5,'Onion Rava Dosa','Thin crispy rava dosa with onion topping',85,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(5,'Mini Meals','Mini sized full meals with sambar and rasam',110,'Meals',1,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(5,'Bonda','Deep fried spiced potato balls in besan batter',50,'Snacks',1,4.5,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format');

-- ============================================================
-- RESTAURANT 6: Govinda Bhavan (Meals & Rasam)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(6,'Full Meals Thali','Complete South Indian thali with rice, rasam, sambar, curries',140,'Meals',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(6,'Rasam Rice','Thin peppery tamarind soup with steamed rice',80,'Meals',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(6,'Curd Rice','Tempered curd rice with pomegranate and curry leaves',70,'Meals',1,4.7,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(6,'Plain Dosa','Simple crispy dosa with sambar and chutneys',60,'Tiffin',1,4.5,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(6,'Payasam','Sweet rice and milk dessert with cardamom',55,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format');

-- ============================================================
-- RESTAURANT 7: The Veg Garden (Continental, Salads)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(7,'Caesar Salad','Romaine lettuce, croutons, parmesan in classic caesar dressing',160,'Salads',1,4.7,'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&auto=format'),
(7,'Veg Club Sandwich','Multilayered sandwich with veggies and cheese',140,'Sandwiches',1,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(7,'Garden Burger','Juicy veg patty burger with lettuce and tomato',160,'Burgers',1,4.5,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(7,'Mushroom Pasta','Creamy mushroom pasta in white sauce',200,'Pasta',1,4.8,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format'),
(7,'Fresh Fruit Bowl','Seasonal fruits with honey and chia seeds',120,'Healthy',1,4.6,'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&auto=format'),
(7,'Cold Coffee','Chilled coffee blended with milk and ice cream',90,'Beverages',1,4.7,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format');

-- ============================================================
-- RESTAURANT 8: Arya Bhavan (Tiffin, Coffee)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(8,'Kari Dosa','Crispy dosa with spiced potato filling',75,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(8,'Idli Sambar','4 soft idlis with piping hot sambar',60,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(8,'Set Dosa (3 Pcs)','Soft thick dosas served as set with coconut chutney',70,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(8,'Filter Coffee','Freshly brewed decoction coffee',30,'Beverages',1,4.9,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format'),
(8,'Upma with Vada','Semolina upma with crispy vada',80,'Tiffin',1,4.5,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format');

-- ============================================================
-- RESTAURANT 9: Vasantha Bhavan (Idli, Vada)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(9,'Idli Vada Combo','2 idlis and 1 vada with sambar and chutneys',75,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(9,'Masala Vada','Spiced chana dal crispy vadas',55,'Snacks',1,4.7,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(9,'Paper Dosa','Extra thin large crispy dosa',80,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(9,'Bread Omelette','Egg omelette between two toast slices',70,'Snacks',0,4.5,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format'),
(9,'Chai','Masala tea with ginger and cardamom',25,'Beverages',1,4.6,'https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=500&auto=format');

-- ============================================================
-- RESTAURANT 10: Annapoorna Hotel (Meals, Thali)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(10,'Special Thali','Full thali with 4 curries, rice, chapati, dessert',200,'Meals',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(10,'Mini Thali','Compact thali with 2 curries, dal, rice, chapati',140,'Meals',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(10,'Sambar Rice','Thick dal and vegetable sambar over hot rice',90,'Meals',1,4.7,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(10,'Lemon Rice','Tangy turmeric lemon rice with peanuts',75,'Meals',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(10,'Tamarind Rice','Spicy puli sadam with mustard and curry leaves',75,'Meals',1,4.6,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format');

-- ============================================================
-- RESTAURANT 11: Udupi Garden (Dosa, Upma)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(11,'Udupi Masala Dosa','Classic Udupi-style masala dosa with coconut chutney',85,'Tiffin',1,4.9,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(11,'Uttapam','Thick rice pancake topped with tomato and onion',80,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(11,'Rava Upma','Semolina cooked with vegetables and mustard seeds',60,'Tiffin',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(11,'Pesarattu','Green moong dosa with ginger chutney',70,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(11,'Akki Rotti','Rice flour flatbread with vegetables',75,'Tiffin',1,4.5,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format');

-- ============================================================
-- RESTAURANT 12: Vrindavan Veg Kitchen (North Indian)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(12,'Rajma Chawal','Red kidney bean curry with basmati rice',150,'Mains',1,4.8,'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=500&auto=format'),
(12,'Chole Puri','Spicy chickpea curry with deep fried puri',120,'Mains',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(12,'Aloo Paratha','Stuffed potato flatbread with butter and pickle',90,'Breads',1,4.6,'https://images.unsplash.com/photo-1605888969566-8e509e0e0b9d?w=500&auto=format'),
(12,'Paneer Tikka','Tandoor grilled spiced paneer cubes',200,'Starters',1,4.9,'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=500&auto=format'),
(12,'Lassi (Sweet)','Chilled sweet yogurt drink',60,'Beverages',1,4.7,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format');

-- ============================================================
-- RESTAURANT 13: Sri Vari Mess (Full Meals, Rasam)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(13,'Full Meals (Veg)','Unlimited rice with 5 curries, papad, pickle, buttermilk',130,'Meals',1,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(13,'Rasam','Spicy thin pepper tamarind soup',30,'Sides',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(13,'Kootu','Vegetables and lentils with coconut gravy',70,'Sides',1,4.5,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(13,'Ghee Rice','Basmati rice with whole spices and ghee',90,'Mains',1,4.6,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(13,'Payasam','Sweet vermicelli dessert with cardamom',50,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format');

-- ============================================================
-- RESTAURANT 14: Pongal House (Pongal, Kara Kuzhambu)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(14,'Ven Pongal','Classic ghee pongal with pepper cashews',70,'Tiffin',1,4.9,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(14,'Sakkarai Pongal','Sweet pongal with jaggery and cardamom',65,'Sweets',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(14,'Kara Kuzhambu Rice','Spicy tamarind curry over hot rice',100,'Mains',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(14,'Vada','Crispy medu vada with sambar',50,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(14,'Kollu Rasam','Horse gram rasam, healthy and spicy',40,'Sides',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format');

-- ============================================================
-- RESTAURANT 15: Hotel Tamil Nadu (Parotta, Meals)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(15,'Veg Parotta Set','2 flaky parottas with vegetable kurma',90,'Mains',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(15,'Full Meals','Veg rice meals with sambar, rasam, curries',120,'Meals',1,4.6,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(15,'Chapati Kurma','3 soft chapatis with veg kurma',85,'Mains',1,4.5,'https://images.unsplash.com/photo-1605888969566-8e509e0e0b9d?w=500&auto=format'),
(15,'Egg Parotta','Crispy egg-coated parotta (non-veg)',100,'Mains',0,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(15,'Lassi','Fresh yogurt based drink',50,'Beverages',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format');

-- ============================================================
-- RESTAURANT 16: Buhari Hotel (Chicken, Mutton, Biryani)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(16,'Chicken Biryani','Fragrant basmati rice with spiced chicken pieces',220,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(16,'Mutton Biryani','Tender mutton cooked in aromatic dum biryani',280,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(16,'Chicken 65','Deep fried crispy chicken with curry leaves',200,'Starters',0,4.8,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(16,'Mutton Chukka','Dry spiced mutton fry with onion and pepper',260,'Starters',0,4.7,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(16,'Chicken Gravy','Rich coconut based chicken curry',180,'Mains',0,4.6,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(16,'Raita','Cooling yogurt with onion and cucumber',40,'Sides',1,4.4,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format');

-- ============================================================
-- RESTAURANT 17: Junior Kuppanna (Chettinad)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(17,'Chettinad Chicken Curry','Aromatic spiced chicken in chettinad masala',220,'Mains',0,4.9,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(17,'Mutton Sukka','Dry spiced mutton fry, chettinad style',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(17,'Chicken Biryani','Chettinad spiced chicken biryani',240,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(17,'Fish Fry','Fresh fish marinated in chettinad spices and pan fried',200,'Starters',0,4.6,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(17,'Egg Omelette','Spiced egg omelette with onion and tomato',80,'Sides',0,4.5,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format');

-- ============================================================
-- RESTAURANT 18: Chicken Corner (Grilled, Wings)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(18,'Grilled Chicken Half','Half grilled chicken with lemon and herbs',280,'Grills',0,4.8,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(18,'Chicken Wings (6 Pcs)','Spicy marinated chicken wings',180,'Starters',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(18,'Peri Peri Chicken','Flame grilled chicken in peri peri sauce',260,'Grills',0,4.8,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(18,'Chicken Shawarma','Marinated chicken wrapped in flatbread with garlic sauce',150,'Wraps',0,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(18,'Chicken Fried Rice','Wok tossed rice with tender chicken pieces',160,'Rice',0,4.5,'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500&auto=format');

-- ============================================================
-- RESTAURANT 19: Karaikudi Chettinad Kitchen
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(19,'Chettinad Chicken','Classic karaikudi style spicy chicken',230,'Mains',0,4.9,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(19,'Mutton Curry','Slow cooked mutton in chettinad spices',290,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(19,'Chettinad Biryani','Aromatic chettinad style biryani',250,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(19,'Pepper Chicken','Dry pepper chicken fry with curry leaves',210,'Starters',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(19,'Neer Mor','Spiced buttermilk with ginger and curry leaves',40,'Beverages',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format');

-- ============================================================
-- RESTAURANT 20: Chicken Republic (Fried Chicken)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(20,'Crispy Fried Chicken','Golden crispy fried chicken pieces (4 pcs)',220,'Fried',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(20,'Chicken Burger','Juicy fried chicken burger with mayo',160,'Burgers',0,4.6,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(20,'Loaded Fries','Crispy fries topped with cheese and jalapeños',120,'Sides',1,4.5,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(20,'Chicken Strips','Crispy chicken strips with dipping sauce',180,'Starters',0,4.6,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(20,'Spicy Wings','Hot and spicy chicken wings with ranch dip',200,'Starters',0,4.8,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 21-30: Non-Veg / Biryani / Grill (sample menus)
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
-- Empire Restaurant (21)
(21,'Chicken Dum Biryani','Classic dum biryani with chicken',220,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(21,'Chicken 65','Crispy fried chicken with curry leaves',180,'Starters',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(21,'Seekh Kebab','Minced lamb skewer kebab from tandoor',200,'Starters',0,4.7,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500&auto=format'),
(21,'Raita','Cooling yogurt raita',40,'Sides',1,4.4,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
-- Donne Biryani House (22)
(22,'Donne Mutton Biryani','Signature donne style mutton biryani',280,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(22,'Donne Chicken Biryani','Aromatic chicken biryani served in donne leaf',230,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(22,'Boti Curry','Tender goat intestine curry',200,'Mains',0,4.6,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(22,'Raita + Salna','Cooling raita and spicy salna',60,'Sides',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
-- Nellai Tiffin (23)
(23,'Nellai Mutton Kuzhambhu','Spicy Tirunelveli style mutton curry',260,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(23,'Parotta','Flaky layered parotta',30,'Breads',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(23,'Chicken Kuzhambu','Spiced chicken curry Tirunelveli style',200,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(23,'Egg Curry','Country egg in spicy masala',120,'Mains',0,4.5,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format'),
-- Pandian Mess (24)
(24,'Fish Curry Rice','Fresh fish in tamarind curry with rice',180,'Mains',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(24,'Chicken Curry Rice','Home style chicken curry with rice',200,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(24,'Prawn Fry','Crispy fried prawns with lemon',250,'Starters',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(24,'Buttermilk','Fresh homemade spiced buttermilk',30,'Beverages',1,4.6,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
-- Velu Military Hotel (25)
(25,'Mutton Kheema','Minced mutton cooked with spices',260,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(25,'Brain Fry','Spiced lamb brain fry',220,'Starters',0,4.5,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(25,'Mutton Biryani','Slow cooked military hotel style mutton biryani',300,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(25,'Kari Kuzhambhu','Spicy black pepper mutton gravy',240,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 26-35: Biryani Specialists
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(26,'Royal Chicken Biryani','Nawabi style dum chicken biryani',250,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(26,'Mutton Tikka','Tandoor grilled mutton tikka',320,'Starters',0,4.7,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500&auto=format'),
(26,'Chicken Kebab','Juicy minced chicken kebab from clay oven',220,'Starters',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(26,'Firni','Rose flavored rice pudding dessert',80,'Desserts',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(27,'Mutton Biryani','Juicy mutton pieces in aromatic biryani',290,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(27,'Liver Fry','Spiced lamb liver fry',200,'Starters',0,4.6,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(27,'Mutton Pepper Fry','Dry mutton with freshly ground pepper',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(27,'Bone Soup','Nutritious lamb bone broth',80,'Sides',0,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(28,'Chicken Curry Rice','Home style chicken gravy with steamed rice',180,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(28,'Egg Biryani','Boiled egg biryani with salna',160,'Biryani',0,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(28,'Omelette','Spiced egg omelette',70,'Sides',0,4.4,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format'),
(28,'Mutton Gravy','Thick spiced mutton gravy',240,'Mains',0,4.7,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(29,'Chicken Biryani','Spiced chicken biryani with raita',200,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(29,'Egg Rice','Stir fried rice with egg and spices',140,'Rice',0,4.5,'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500&auto=format'),
(29,'Mutton Chops','Spiced mutton chops fry',260,'Starters',0,4.6,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(29,'Chicken Soup','Clear chicken broth with pepper',80,'Starters',0,4.4,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(30,'BBQ Chicken','Smoky barbecue grilled chicken',280,'Grills',0,4.8,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500&auto=format'),
(30,'Grilled Mutton Chops','Marinated grilled mutton chops',320,'Grills',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(30,'Chicken Satay','Skewered chicken with peanut sauce',180,'Starters',0,4.6,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500&auto=format'),
(30,'Grilled Prawns','Marinated large prawns on grill',300,'Grills',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 31-45: Biryani Houses
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(31,'Thalappakatti Mutton Biryani','Signature Dindigul-style small grain rice mutton biryani',280,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(31,'Thalappakatti Chicken Biryani','Signature chicken biryani Dindigul style',230,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(31,'Salna','Spicy thin curry for biryani',60,'Sides',0,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(31,'Raita','Cooling cucumber yogurt raita',50,'Sides',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(32,'Ambur Mutton Biryani','Classic Ambur style mutton biryani with sirka onions',260,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(32,'Ambur Chicken Biryani','Fragrant Ambur style chicken biryani',200,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(32,'Dalcha','Tangy lentil and meat curry side dish',80,'Sides',0,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(32,'Brinjal Curry','Spiced brinjal gravy for biryani',70,'Sides',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(33,'Hyderabadi Dum Biryani','Authentic Hyderabadi slow dum biryani',280,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(33,'Paradise Chicken Biryani','Classic Paradise style chicken biryani',240,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(33,'Mirchi Ka Salan','Hyderabadi green chili curry',90,'Sides',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(33,'Double Ka Meetha','Hyderabadi bread pudding dessert',90,'Desserts',1,4.5,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format');

-- Biryani restaurants 34-45 (abbreviated menus)
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(34,'Chicken Biryani','Spiced chicken biryani',220,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(34,'Veg Biryani','Fragrant vegetable biryani',160,'Biryani',1,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(34,'Prawn Biryani','Fresh prawn biryani with coastal spices',300,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(34,'Raita','Yogurt raita',40,'Sides',1,4.4,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(35,'Haleem','Slow cooked wheat and mutton porridge',180,'Starters',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(35,'Dum Chicken Biryani','Slow dum cooked chicken biryani',240,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(35,'Mutton Dum Biryani','Slow dum cooked mutton biryani',290,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(35,'Sheer Khurma','Sweet vermicelli dessert in milk',70,'Desserts',1,4.5,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(36,'Chicken Biryani','Fragrant chicken biryani',210,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(36,'Mutton Biryani','Rich mutton biryani',270,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(36,'Veg Biryani','Spiced vegetable biryani',150,'Biryani',1,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(36,'Lassi','Sweet chilled lassi',60,'Beverages',1,4.6,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(37,'Lucknowi Biryani','Awadhi style chicken biryani',260,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(37,'Kolkata Style Biryani','Kolkata biryani with potato and boiled egg',230,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(37,'Hyderabadi Biryani','Classic Hyderabadi dum biryani',270,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(37,'Phirni','Rice flour pudding',80,'Desserts',1,4.5,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(38,'Chicken Biryani','Chennai style chicken biryani with salna',200,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(38,'Mutton Biryani','Spiced mutton biryani',250,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(38,'Salna','Spicy thin curry',50,'Sides',0,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(38,'Boiled Egg','2 boiled eggs',40,'Sides',0,4.3,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format'),
(39,'Chettinad Biryani','Spicy chettinad chicken biryani',240,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(39,'Mutton Biryani','Mutton biryani with chettinad masala',290,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(39,'Chicken Tikka','Tandoor chicken tikka starter',200,'Starters',0,4.6,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(39,'Raita','Cooling yogurt',45,'Sides',1,4.4,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(40,'Ambur Chicken Biryani','Original Ambur style small grain biryani',210,'Biryani',0,4.9,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(40,'Ambur Mutton Biryani','Signature Ambur mutton biryani',260,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(40,'Dalcha','Tangy lentil side curry',70,'Sides',0,4.6,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(40,'Sirka Onions','Pickled onions served with biryani',30,'Sides',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(41,'Hyderabadi Dum Mutton','Authentic dum pukht mutton biryani',300,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(41,'Dum Chicken Biryani','Sealed pot slow cooked chicken biryani',240,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(41,'Mirchi Salan','Hyderabadi chili curry for biryani',80,'Sides',1,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(41,'Khubani Ka Meetha','Hyderabadi apricot dessert',90,'Desserts',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(42,'Express Chicken Biryani','Quick chicken biryani',180,'Biryani',0,4.6,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(42,'Egg Biryani','Egg biryani with boiled eggs',150,'Biryani',0,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(42,'Veg Biryani','Express vegetable biryani',140,'Biryani',1,4.4,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(42,'Onion Raita','Fresh onion cucumber raita',40,'Sides',1,4.3,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(43,'Nawabi Dum Biryani','Royal nawab style mutton biryani',310,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(43,'Mutton Korma','Tender mutton in mild aromatic korma',290,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(43,'Shahi Chicken Biryani','Rich royal chicken dum biryani',260,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(43,'Phirni','Chilled rice flour pudding',85,'Desserts',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(44,'Madurai Chicken Biryani','Spicy Madurai style chicken biryani',220,'Biryani',0,4.8,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(44,'Mutton Biryani','Madurai style mutton biryani',270,'Biryani',0,4.9,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(44,'Coin Parotta','Flaky coin shaped parotta',40,'Sides',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(44,'Chicken Salna','Spicy chicken salna',90,'Sides',0,4.5,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(45,'Multi Style Chicken Biryani','Unique blend of multiple biryani styles',240,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(45,'Veg Biryani Trail','Assorted vegetable biryani',160,'Biryani',1,4.5,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(45,'Chicken Seekh Kebab','Minced chicken seekh kebab',180,'Starters',0,4.6,'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=500&auto=format'),
(45,'Raita','Fresh cucumber raita',45,'Sides',1,4.4,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 46-55: Chettinad
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(46,'Chettinad Chicken Curry','Authentic Anjappar chettinad chicken',240,'Mains',0,4.9,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(46,'Mutton Chukka','Dry spiced mutton fry',280,'Starters',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(46,'Pepper Chicken','Black pepper chicken fry',220,'Mains',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(46,'Chettinad Biryani','Spiced chettinad chicken biryani',250,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(47,'Mutton Sukka','Spicy dry mutton sukka',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(47,'Chicken Chettinad','Spicy chicken chettinad masala',230,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(47,'Kari Dosa','Thin dosa with spiced meat filling',120,'Tiffin',0,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(47,'Neer Mor','Spiced buttermilk',40,'Beverages',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(48,'Chettinad Heritage Thali','Full heritage chettinad vegetarian thali',220,'Meals',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(48,'Paniyaram','Traditional chettinad rice lentil dumplings',80,'Snacks',1,4.6,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(48,'Chicken Curry','Slow cooked chettinad chicken',240,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(48,'Kavuni Arisi Kheer','Black rice pudding dessert',90,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(49,'Ponnusamy Chicken','Signature spiced chicken curry',240,'Mains',0,4.9,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(49,'Mutton Biryani','Chettinad style mutton biryani',280,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(49,'Chicken Salna','Spicy thin chicken curry',100,'Mains',0,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(49,'Parotta','Flaky layered parotta',35,'Breads',1,4.5,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(50,'Kavuni Arisi Dessert','Traditional black sticky rice dessert',90,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(50,'Chettinad Chicken Kuzhambu','Heritage chicken kuzhambu',240,'Mains',0,4.8,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(50,'Meen Kuzhambu','Fresh fish in tamarind based chettinad curry',220,'Mains',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(50,'Appam','Soft lacy rice pancake',60,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format');

-- Restaurants 51-55 abbreviated
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(51,'Fine Dining Chettinad Thali','Premium chettinad heritage thali',350,'Meals',0,4.9,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(51,'Signature Chicken Chettinad','Premium chettinad chicken',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(51,'Mutton Roast','Slow roasted mutton Chettinad style',320,'Mains',0,4.8,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(51,'Welcome Drink','Traditional vettiver cooler',60,'Beverages',1,4.6,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(52,'Kari Dosa (Non-Veg)','Crispy dosa with spiced meat filling',130,'Tiffin',0,4.8,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(52,'Mutton Curry','Home style madurai mutton curry',260,'Mains',0,4.7,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(52,'Egg Omelette','Spiced egg omelette',80,'Sides',0,4.4,'https://images.unsplash.com/photo-1609167830220-7164aa360951?w=500&auto=format'),
(52,'Chicken Biryani','Chettinad chicken biryani',230,'Biryani',0,4.7,'https://images.unsplash.com/photo-1589302168851-573a9d3f8e7c?w=500&auto=format'),
(53,'Meen Kuzhambhu Rice','Fresh fish in tangy tamarind curry with rice',200,'Mains',0,4.9,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(53,'Pepper Chicken','Freshly ground pepper chicken dry fry',230,'Mains',0,4.8,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(53,'Chettinad Chicken Biryani','Spiced chettinad style biryani',240,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(53,'Neer Mor','Chilled buttermilk with ginger',40,'Beverages',1,4.5,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(54,'Traditional Chettinad Meals','Full traditional cooking style meals',280,'Meals',0,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(54,'Appam with Chicken Stew','Lacy appam with coconut chicken stew',160,'Tiffin',0,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(54,'Kavuni Arisi','Black sticky rice pudding',90,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(54,'Village Style Mutton','Clay pot slow cooked mutton',300,'Mains',0,4.9,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(55,'Village Chicken Kheema','Minced chicken village style',200,'Mains',0,4.8,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(55,'Mutton Kheema','Minced mutton with spices',250,'Mains',0,4.7,'https://images.unsplash.com/photo-1567188040759-fb8a883dc6d8?w=500&auto=format'),
(55,'Chettinad Fish Fry','Whole fish fried in chettinad masala',230,'Starters',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(55,'Parotta','Flaky village style parotta',35,'Breads',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 56-65: South Indian variety
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(56,'Mysore Pak','Rich ghee-based sweet from Mysore',80,'Sweets',1,4.9,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(56,'Kaju Katli','Cashew nut sweet fudge',120,'Sweets',1,4.8,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(56,'Masala Dosa','Crispy dosa with spiced potato',90,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(56,'Full Meals','South Indian full meals',150,'Meals',1,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(56,'Basundi','Thickened sweetened milk dessert',70,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(57,'Fish Curry Rice','Fresh fish curry with steamed rice',200,'Mains',0,4.7,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(57,'Veg Thali','South Indian vegetarian thali',140,'Meals',1,4.6,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(57,'Prawn Masala','Spiced prawn masala curry',260,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(57,'Crab Masala','Fresh crab in spicy masala',320,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(58,'Plain Dosa','Crispy thin plain dosa',60,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(58,'Masala Dosa','Stuffed potato dosa',80,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(58,'Set Dosa','3 soft set dosas with sambar',75,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(58,'Filter Coffee','Strong South Indian filter coffee',30,'Beverages',1,4.9,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format'),
(59,'Chicken Parotta','Minced chicken stuffed parotta',120,'Mains',0,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(59,'Veg Parotta Kurma','Parotta with vegetable kurma',90,'Mains',1,4.7,'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=500&auto=format'),
(59,'Chicken Curry','Spicy chicken curry',180,'Mains',0,4.7,'https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=500&auto=format'),
(59,'Egg Dosa','Egg-topped dosa',90,'Tiffin',0,4.6,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(60,'Full Meals','Pure veg full south indian meals',130,'Meals',1,4.8,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(60,'Sambar Rice','Dal and vegetable sambar with rice',80,'Mains',1,4.7,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(60,'Curd Rice','Tempered curd rice with pomegranate',70,'Mains',1,4.6,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(60,'Payasam','Sweet rice milk dessert',50,'Desserts',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(61,'Bajji','Mixed vegetable bajji deep fried',60,'Snacks',1,4.6,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(61,'Chicken Meals','Non veg meals with chicken curry',180,'Meals',0,4.7,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(61,'Murukku','Crispy rice flour snack',40,'Snacks',1,4.5,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(61,'Bonda','Spiced potato deep fried bonda',50,'Snacks',1,4.5,'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=500&auto=format'),
(62,'Idiyappam','String hoppers with coconut milk',80,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(62,'Appam','Lacy rice pancake with stew',80,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(62,'Puttu','Steamed rice flour and coconut cylinder',70,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(62,'Filter Coffee','Hot freshly brewed filter coffee',30,'Beverages',1,4.9,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format'),
(63,'Banana Leaf Meals','Traditional meals served on banana leaf',150,'Meals',1,4.9,'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format'),
(63,'Special Thali','Grand thali with 6 side dishes',200,'Meals',1,4.8,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(63,'Payasam','Vermicelli kheer with cardamom',55,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(63,'Rasam','Spiced pepper tamarind soup',30,'Sides',1,4.6,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(64,'Pongal','Pepper ghee rice with moong dal',70,'Tiffin',1,4.8,'https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=500&auto=format'),
(64,'Upma','Rava upma with vegetables',60,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(64,'Dosa','Crispy plain dosa',65,'Tiffin',1,4.7,'https://images.unsplash.com/photo-1604329760661-e71dc83f8f26?w=500&auto=format'),
(64,'Filter Coffee','Traditional filter coffee',28,'Beverages',1,4.9,'https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=500&auto=format'),
(65,'Kotthu Parotta','Minced parotta with egg and chicken',140,'Mains',0,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(65,'Chicken Parotta','Chicken stuffed parotta',130,'Mains',0,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(65,'Veg Kotthu','Vegetable kotthu parotta',100,'Mains',1,4.5,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(65,'Mutton Kotthu','Minced mutton kotthu parotta',160,'Mains',0,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 66-75: Seafood
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(66,'Fish Fry','Fresh fish marinated in spices and deep fried',200,'Starters',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(66,'Prawn Masala','Large prawns in coconut masala curry',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(66,'Crab Curry','Fresh crab in spiced coconut gravy',350,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(66,'Lobster Thermidor','Baked lobster with creamy sauce',600,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(66,'Fish Biryani','Aromatic basmati biryani with fish',280,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(67,'Crab Butter Garlic','Whole crab in butter garlic sauce',380,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(67,'Prawn Biryani','Fragrant prawn biryani with coastal spices',300,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(67,'Fish Fry','Crispy fried whole fish',220,'Starters',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(67,'Prawn Masala','Jumbo prawns in masala',300,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(68,'Grilled Sea Bass','Fresh sea bass grilled with herbs',350,'Grills',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(68,'Fish Curry','Fresh fish in Kerala style coconut curry',220,'Mains',0,4.7,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(68,'Fried Prawns','Golden crispy fried prawns',260,'Starters',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(68,'Squid Pepper Fry','Crispy squid with black pepper',240,'Starters',0,4.6,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(69,'Seer Fish (Vanjaram) Fry','Premium seer fish fry',300,'Starters',0,4.9,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(69,'Pomfret Fish Curry','Pomfret in tamarind coconut curry',280,'Mains',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(69,'Tuna Steak','Pan seared tuna steak',320,'Mains',0,4.7,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(69,'Prawn Cocktail','Chilled prawn cocktail starter',200,'Starters',0,4.6,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(70,'Kerala Fish Curry','Authentic Kerala fish curry with kodampuli',250,'Mains',0,4.9,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(70,'Crab Roast','Whole crab dry roasted with Kerala spices',380,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(70,'Karimeen Pollichathu','Pearl spot fish wrapped in banana leaf',320,'Mains',0,4.9,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(70,'Fish Biriyani','Kerala style fish biryani',280,'Biryani',0,4.7,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(71,'Grilled Tiger Prawns','Large tiger prawns marinated and grilled',380,'Grills',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(71,'Fish Biryani','Fresh fish biryani with coastal masala',280,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(71,'Seafood Platter','Mixed grilled seafood platter for 2',700,'Grills',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(71,'Calamari','Crispy fried calamari rings',220,'Starters',0,4.6,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(72,'Fish Fry Platter','Assorted fish fry platter',300,'Starters',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(72,'Prawn Biryani','Large prawn biryani',320,'Biryani',0,4.8,'https://images.unsplash.com/photo-1563379091339-03b21ab4a4f8?w=500&auto=format'),
(72,'Crab Masala','Fresh crab in spicy masala',360,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(72,'Fish Curry','Tangy tamarind fish curry',220,'Mains',0,4.7,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(73,'Lobster Bisque','Creamy rich lobster soup',350,'Soups',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(73,'Tiger Prawn Butter Garlic','Tiger prawns in butter garlic sauce',400,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(73,'Sea Bass Fillet','Pan fried sea bass fillet',380,'Mains',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(73,'Seafood Linguine','Pasta with mixed seafood in tomato sauce',320,'Pasta',0,4.7,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format'),
(74,'Fresh Grilled Fish','Daily fresh catch grilled with herbs',280,'Grills',0,4.8,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(74,'Prawn Masala Curry','Large prawns in spicy masala curry',300,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(74,'Fish Tikka','Marinated fish tikka from tandoor',250,'Starters',0,4.7,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(74,'Crab Pepper Fry','Whole crab dry fry with pepper',370,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(75,'Meen Pollichathu','Fish wrapped in banana leaf and grilled',320,'Mains',0,4.9,'https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?w=500&auto=format'),
(75,'Kerala Prawn Curry','Coconut milk prawn curry',300,'Mains',0,4.8,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format'),
(75,'Appam','Soft appam to go with seafood curry',60,'Tiffin',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(75,'Crab Roast','Kerala style crab dry roast',380,'Mains',0,4.9,'https://images.unsplash.com/photo-1502364271109-0a9a75a2a9df?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 76-85: Pizza
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(76,'Cheese Burst Margherita','Classic margherita with cheese burst crust',299,'Pizza',1,4.8,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(76,'Chicken Supreme','Loaded chicken pizza with peppers and onion',349,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(76,'BBQ Chicken','Smoky BBQ chicken pizza',349,'Pizza',0,4.7,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(76,'Garlic Bread','Toasted garlic bread with cheese dip',149,'Sides',1,4.6,'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=500&auto=format'),
(76,'Pasta Arabiatta','Penne pasta in spicy tomato sauce',199,'Pasta',1,4.6,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format'),
(77,'Margherita','Classic thin crust margherita',219,'Pizza',1,4.7,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(77,'Chicken Pepperoni','Loaded pepperoni and chicken pizza',319,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(77,'Farm House','Veggie loaded farm house pizza',279,'Pizza',1,4.6,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(77,'Garlic Bread Sticks','Crispy garlic bread sticks',129,'Sides',1,4.5,'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=500&auto=format'),
(77,'Choco Lava Cake','Warm chocolate lava cake',99,'Desserts',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(78,'Stuffed Crust Veg','Cheese stuffed crust veggie pizza',299,'Pizza',1,4.7,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(78,'Chicken Tikka Pizza','Tandoori chicken tikka pizza',329,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(78,'Pasta Alfredo','Creamy pasta in white alfredo sauce',219,'Pasta',1,4.6,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format'),
(78,'Chicken Wings','Spicy BBQ chicken wings',249,'Starters',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(79,'Smokin Joe Classic Pizza','Classic veg pizza with olives and peppers',269,'Pizza',1,4.6,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(79,'Chicken Overload','Extra chicken topped pizza',329,'Pizza',0,4.7,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(79,'Veg Pasta','Mixed vegetable pasta',189,'Pasta',1,4.5,'https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb?w=500&auto=format'),
(79,'Cheese Dip','Creamy cheese dipping sauce',60,'Sides',1,4.4,'https://images.unsplash.com/photo-1584990347449-a2d4dcd4ef27?w=500&auto=format'),
(80,'Wood Fired Margherita','Artisan wood-fired thin crust margherita',349,'Pizza',1,4.9,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(80,'Quattro Formaggi','Four cheese pizza',399,'Pizza',1,4.8,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(80,'Diavola','Spicy salami pizza',379,'Pizza',0,4.7,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(80,'Bruschetta','Classic Italian tomato bruschetta',179,'Starters',1,4.6,'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=500&auto=format'),
(81,'Classic Margherita','Italian thin crust margherita',289,'Pizza',1,4.7,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(81,'Chicken Balsamico','Chicken pizza with balsamic glaze',339,'Pizza',0,4.7,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(81,'Tiramisu','Classic Italian tiramisu dessert',199,'Desserts',1,4.8,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(81,'Garlic Dough Balls','Baked garlic dough balls with dip',149,'Sides',1,4.5,'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=500&auto=format'),
(82,'Peri Peri Chicken Pizza','Fiery peri peri chicken pizza',329,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(82,'BBQ Non-Veg Pizza','Smoky BBQ with chicken and beef',349,'Pizza',0,4.7,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(82,'Mac and Cheese Pizza','Mac and cheese topped pizza',299,'Pizza',1,4.6,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(82,'Chicken Wings','Crispy oven baked wings',229,'Starters',0,4.6,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(83,'Thin Crust Margherita','Ultra thin crispy margherita',249,'Pizza',1,4.7,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(83,'Paneer Tikka Pizza','Spiced paneer tikka on pizza',309,'Pizza',1,4.7,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(83,'Fusion Mexican Pizza','Mexican spiced pizza with jalapeños',299,'Pizza',1,4.6,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(83,'Cheese Overload','Four cheese overloaded pizza',329,'Pizza',1,4.8,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(84,'Neapolitan Margherita','Authentic Neapolitan style margherita',369,'Pizza',1,4.9,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(84,'Pepperoni Classic','Classic American pepperoni pizza',359,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(84,'Mushroom Truffle','Mushroom pizza with truffle oil',399,'Pizza',1,4.8,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(84,'Tiramisu','House tiramisu dessert',189,'Desserts',1,4.8,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(85,'Cheese Burst Chicken','Extra cheese burst chicken pizza',349,'Pizza',0,4.8,'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?w=500&auto=format'),
(85,'Loaded Veg Feast','Super loaded vegetable cheese pizza',309,'Pizza',1,4.7,'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format'),
(85,'Triple Cheese Margherita','Three cheese margherita',319,'Pizza',1,4.8,'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&auto=format'),
(85,'Stuffed Garlic Bread','Cheese stuffed garlic bread',169,'Sides',1,4.6,'https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?w=500&auto=format');

-- ============================================================
-- RESTAURANTS 86-100: Fast Food
-- ============================================================
INSERT INTO menu (restaurant_id, name, description, price, category, is_veg, rating, image_url) VALUES
(86,'McAloo Tikki Burger','Crispy aloo tikki burger with lettuce and sauce',89,'Burgers',1,4.6,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(86,'McSpicy Chicken Burger','Spicy crispy chicken burger',149,'Burgers',0,4.7,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(86,'French Fries (Large)','Crispy salted french fries large',119,'Sides',1,4.7,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(86,'McFlurry Oreo','Soft serve ice cream with Oreo pieces',99,'Desserts',1,4.8,'https://images.unsplash.com/photo-1562802378-063ec186a863?w=500&auto=format'),
(86,'Chicken McNuggets (6 Pcs)','Crispy chicken nuggets with dip',149,'Starters',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(87,'KFC Original Fried Chicken (2 Pcs)','Signature 11 herbs and spices fried chicken',229,'Fried',0,4.9,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(87,'Zinger Burger','Spicy zinger chicken burger',189,'Burgers',0,4.8,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(87,'Hot Wings (6 Pcs)','Fiery hot chicken wings',189,'Starters',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(87,'Coleslaw','Creamy coleslaw side',69,'Sides',1,4.5,'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500&auto=format'),
(87,'Pepsi (Large)','Chilled Pepsi drink',79,'Beverages',1,4.3,'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=500&auto=format'),
(88,'Whopper Burger','Classic Whopper with flame-grilled patty',249,'Burgers',0,4.8,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(88,'Crispy Chicken Burger','Crispy chicken burger with cheese',199,'Burgers',0,4.7,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(88,'Onion Rings','Crispy battered onion rings',99,'Sides',1,4.5,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(88,'Veg Burger','Garden fresh veg patty burger',149,'Burgers',1,4.5,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(89,'Subway Club','6-inch sub with turkey chicken ham',249,'Sandwiches',0,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(89,'Veggie Delight','6-inch veggie sub',169,'Sandwiches',1,4.5,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(89,'Chicken Teriyaki','Chicken teriyaki 6-inch sub',229,'Sandwiches',0,4.7,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(89,'Cookie','Freshly baked chocolate chip cookie',49,'Desserts',1,4.6,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(90,'Steamed Momos (6 Pcs)','Classic steamed veg momos',120,'Momos',1,4.7,'https://images.unsplash.com/photo-1563245372-f21724e3856d?w=500&auto=format'),
(90,'Chicken Momos (6 Pcs)','Juicy chicken filled steamed momos',150,'Momos',0,4.8,'https://images.unsplash.com/photo-1563245372-f21724e3856d?w=500&auto=format'),
(90,'Pan Fried Momos','Crispy pan fried momos',160,'Momos',1,4.7,'https://images.unsplash.com/photo-1563245372-f21724e3856d?w=500&auto=format'),
(90,'Thukpa','Tibetan noodle soup with vegetables',140,'Soups',1,4.5,'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500&auto=format'),
(91,'Chicken Kathi Roll','Chicken stuffed kathi roll',140,'Rolls',0,4.7,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(91,'Paneer Roll','Spiced paneer kathi roll',120,'Rolls',1,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(91,'Egg Roll','Egg wrapped kathi roll',110,'Rolls',0,4.5,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(91,'Veg Frankie','Classic veg Frankie roll',100,'Rolls',1,4.5,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(92,'Shack Burger','Classic Shack Burger with beef patty',349,'Burgers',0,4.8,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(92,'Smoke Shack Burger','Bacon, cherry peppers Shack burger',399,'Burgers',0,4.9,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(92,'Concrete Shake','Dense frozen custard milkshake',299,'Desserts',1,4.8,'https://images.unsplash.com/photo-1562802378-063ec186a863?w=500&auto=format'),
(92,'Shack Fries','Crinkle cut seasoned fries',149,'Sides',1,4.6,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(93,'Pani Puri (6 Pcs)','Crispy puris with spiced tamarind water',60,'Chaat',1,4.8,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(93,'Bhel Puri','Puffed rice chaat with chutneys',80,'Chaat',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(93,'Sev Puri','Crispy puris with potato and chutneys',80,'Chaat',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(93,'Dahi Puri','Crispy puris with sweet curd and chutneys',90,'Chaat',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(93,'Masala Corn','Spiced boiled sweet corn',70,'Snacks',1,4.5,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(94,'Classic Five Guys Burger','Double beef patty with your choice of toppings',399,'Burgers',0,4.8,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(94,'Bacon Cheeseburger','Double patty with crispy bacon and cheese',449,'Burgers',0,4.9,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(94,'Loaded Fries','Hand cut fries with all toppings',199,'Sides',1,4.7,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(94,'Vanilla Milkshake','Thick hand spun milkshake',249,'Beverages',1,4.7,'https://images.unsplash.com/photo-1562802378-063ec186a863?w=500&auto=format'),
(95,'Crunchy Taco','Crispy taco shell with seasoned beef',129,'Tacos',0,4.6,'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=500&auto=format'),
(95,'Soft Taco (Veg)','Soft flour tortilla with black beans and cheese',109,'Tacos',1,4.5,'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=500&auto=format'),
(95,'Nachos','Crispy nachos with salsa, cheese and jalapeños',179,'Sides',1,4.6,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(95,'Crunchwrap Supreme','Folded wrap with crunch tostada inside',169,'Wraps',0,4.7,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(96,'Rasgulla (4 Pcs)','Soft spongy rasgulla in sugar syrup',80,'Sweets',1,4.7,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(96,'Mathura Peda','Soft milk sweets from Mathura',120,'Sweets',1,4.8,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(96,'Kaju Katli','Pure cashew nut sweet',150,'Sweets',1,4.8,'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=500&auto=format'),
(96,'Sev Mixture','Crispy mixed snack mix',60,'Snacks',1,4.5,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(97,'Crispy Fried Chicken','Hot crispy fried chicken pieces',180,'Fried',0,4.7,'https://images.unsplash.com/photo-1569058242253-92a9c755a0ec?w=500&auto=format'),
(97,'Chicken Wrap','Grilled chicken in a tortilla wrap',150,'Wraps',0,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(97,'Veg Wrap','Mixed veg wrap with sauce',120,'Wraps',1,4.5,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(97,'Seasoned Fries','Crispy seasoned potato fries',90,'Sides',1,4.5,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format'),
(98,'Chicken Fried Rice','Wok fried rice with chicken and soy',160,'Rice',0,4.7,'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500&auto=format'),
(98,'Veg Hakka Noodles','Hakka noodles with vegetables',140,'Noodles',1,4.6,'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=500&auto=format'),
(98,'Chicken Manchurian','Crispy chicken balls in manchurian sauce',180,'Starters',0,4.7,'https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500&auto=format'),
(98,'Spring Rolls (4 Pcs)','Crispy vegetable spring rolls',120,'Starters',1,4.5,'https://images.unsplash.com/photo-1563245372-f21724e3856d?w=500&auto=format'),
(99,'Vada Pav','Mumbai street style vada pav',40,'Street Food',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(99,'Corn Sandwich','Grilled sweet corn cheese sandwich',80,'Sandwiches',1,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(99,'Pav Bhaji','Mumbai pav bhaji with butter pav',100,'Street Food',1,4.7,'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=500&auto=format'),
(99,'Misal Pav','Spicy moth bean curry with pav',90,'Street Food',1,4.6,'https://images.unsplash.com/photo-1630383249896-424e482df921?w=500&auto=format'),
(100,'Veg Burger','Fresh veg patty burger',129,'Burgers',1,4.5,'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&auto=format'),
(100,'Chicken Burger','Crispy chicken burger',149,'Burgers',0,4.6,'https://images.unsplash.com/photo-1551782045-a5f837f19df0?w=500&auto=format'),
(100,'Paneer Roll','Spiced paneer roll',120,'Rolls',1,4.5,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(100,'Chicken Roll','Chicken kathi roll',130,'Rolls',0,4.6,'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&auto=format'),
(100,'French Fries','Crispy salted fries',89,'Sides',1,4.5,'https://images.unsplash.com/photo-1553979459-d1b5a87e2708?w=500&auto=format');

SELECT 'DB Fix Complete!' as status;
SELECT COUNT(*) as total_menu_items FROM menu;
SELECT COUNT(*) as total_restaurants FROM restaurants;
