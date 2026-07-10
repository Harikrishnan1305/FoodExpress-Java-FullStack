-- ============================================================
-- Fix: Restaurant INTERIOR/EXTERIOR photos (not food photos)
-- These are real cafe, dining room, restaurant ambiance images
-- Run after seed_100_restaurants.sql
-- ============================================================
USE food_ordering_db;

-- Restaurant/cafe/dining interior images from Unsplash
-- Each category gets visually distinct restaurant-style photos

-- PURE VEG (bright, clean, vegetarian restaurant vibes)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=600&auto=format' WHERE name='Murugan Idli Shop';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=600&auto=format' WHERE name='Saravana Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600&auto=format' WHERE name='Annalakshmi';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?w=600&auto=format' WHERE name='Green Leaf Veg Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?w=600&auto=format' WHERE name='Sri Krishna Veg';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1578474846511-04ba529f0b88?w=600&auto=format' WHERE name='Govinda Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1600565193348-f74bd3c7ccdf?w=600&auto=format' WHERE name='The Veg Garden';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?w=600&auto=format' WHERE name='Arya Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Vasantha Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=600&auto=format&fit=crop&h=400&crop=bottom' WHERE name='Annapoorna Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Udupi Garden';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Vrindavan Veg Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?w=600&auto=format&fit=crop&h=400' WHERE name='Sri Vari Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1578474846511-04ba529f0b88?w=600&auto=format&fit=crop&h=400' WHERE name='Pongal House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1600565193348-f74bd3c7ccdf?w=600&auto=format&fit=crop&h=400' WHERE name='Hotel Tamil Nadu';

-- NON-VEG (darker, more dramatic restaurant interiors)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1525610553991-2bede1a236e2?w=600&auto=format' WHERE name='Buhari Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559339352-11d035aa65de?w=600&auto=format' WHERE name='Junior Kuppanna';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544148103-0773bf10d330?w=600&auto=format' WHERE name='Chicken Corner';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?w=600&auto=format' WHERE name='Karaikudi Chettinad Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901839119-631418a3910d?w=600&auto=format' WHERE name='Chicken Republic';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1525610553991-2bede1a236e2?w=600&auto=format&fit=crop&h=400' WHERE name='Empire Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559339352-11d035aa65de?w=600&auto=format&fit=crop&h=400' WHERE name='Donne Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544148103-0773bf10d330?w=600&auto=format&fit=crop&h=400' WHERE name='Nellai Tiffin & Meals';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?w=600&auto=format&fit=crop&h=400' WHERE name='Pandian Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901839119-631418a3910d?w=600&auto=format&fit=crop&h=400' WHERE name='Velu Military Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1525610553991-2bede1a236e2?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Chennai Royale Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559339352-11d035aa65de?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Mutton Master';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544148103-0773bf10d330?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Kovil Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Star Non-Veg Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901839119-631418a3910d?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Chennai Grill House';

-- BIRYANI (warm, inviting restaurant interiors with Indian decor)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?w=600&auto=format' WHERE name='Dindigul Thalappakatti';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1571104508999-893933ded431?w=600&auto=format' WHERE name='Ambur Star Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?w=600&auto=format' WHERE name='Paradise Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1552566626-52f8b828add9?w=600&auto=format' WHERE name='Biryani Zone';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1579027989536-b7b1f875659b?w=600&auto=format' WHERE name='Pista House Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?w=600&auto=format&fit=crop&h=400' WHERE name='Biryani Brothers';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1571104508999-893933ded431?w=600&auto=format&fit=crop&h=400' WHERE name='The Biryani Project';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?w=600&auto=format&fit=crop&h=400' WHERE name='Chennai Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1552566626-52f8b828add9?w=600&auto=format&fit=crop&h=400' WHERE name='Spice Route Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1579027989536-b7b1f875659b?w=600&auto=format&fit=crop&h=400' WHERE name='Original Ambur Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Dum Pukht Biryani';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1571104508999-893933ded431?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Biryani Hub';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Royal Biryani Court';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1552566626-52f8b828add9?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Madurai Biryani House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1579027989536-b7b1f875659b?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='The Biryani Trail';

-- CHETTINAD (traditional, heritage-style restaurant settings)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559329007-40df8a9345d8?w=600&auto=format' WHERE name='Anjappar Chettinad Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1564844536308-7b5c0c28e8bb?w=600&auto=format' WHERE name='Kasi Chettinad Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1532635241-17e820acc59f?w=600&auto=format' WHERE name='Chettinad Palace Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1564177702906-e97bfec5f898?w=600&auto=format' WHERE name='Ponnusamy Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559329007-40df8a9345d8?w=600&auto=format&fit=crop&h=400' WHERE name='Nattukotai Chettinad';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1564844536308-7b5c0c28e8bb?w=600&auto=format&fit=crop&h=400' WHERE name='The Chettinad House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1532635241-17e820acc59f?w=600&auto=format&fit=crop&h=400' WHERE name='Madurai Chettinad Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1564177702906-e97bfec5f898?w=600&auto=format&fit=crop&h=400' WHERE name='Karaikudi Chettinad Cuisine';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559329007-40df8a9345d8?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Heritage Chettinad Home';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1564844536308-7b5c0c28e8bb?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Valayapatti Hotel';

-- SOUTH INDIAN (casual, tiffin-style restaurants)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1551218808-94e220e084d2?w=600&auto=format' WHERE name='A2B Adyar Ananda Bhavan';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567521464027-f127ff144326?w=600&auto=format' WHERE name='Hotel Palmgrove';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?w=600&auto=format' WHERE name='Dosa Camp';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?w=600&auto=format' WHERE name='Karpagam Hotel';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1578474846511-04ba529f0b88?w=600&auto=format' WHERE name='Kumaran Mess';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1551218808-94e220e084d2?w=600&auto=format&fit=crop&h=400' WHERE name='Hot Chips Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567521464027-f127ff144326?w=600&auto=format&fit=crop&h=400' WHERE name='Chennai Tiffin House';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Madras Meals';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Tiffin Box';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Madurai Malli';

-- SEAFOOD (waterfront, coastal, blue-themed restaurants)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?w=600&auto=format' WHERE name='Mathsya - Sea Food Corner';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1569562211093-4ed0d0758359?w=600&auto=format' WHERE name='Bay of Bengal Seafood';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1534482421-64566f976cfa?w=600&auto=format' WHERE name='Ocean Blue Fish Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1493770348161-369560ae357d?w=600&auto=format' WHERE name='Chennai Harbour Fish';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?w=600&auto=format&fit=crop&h=400' WHERE name='Coastal Catch';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1569562211093-4ed0d0758359?w=600&auto=format&fit=crop&h=400' WHERE name='Marina Seafood Kitchen';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1534482421-64566f976cfa?w=600&auto=format&fit=crop&h=400' WHERE name='The Fish Factory';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1493770348161-369560ae357d?w=600&auto=format&fit=crop&h=400' WHERE name='Neptune Seafood Restaurant';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1602216056096-3b40cc0c9944?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Mahabalipuram Seafood';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1569562211093-4ed0d0758359?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Fisherman Cove Restro';

-- PIZZA (modern, urban pizza parlor interiors)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Pizza Hut';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=600&auto=format&fit=crop&h=400&crop=bottom' WHERE name='Dominos Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1600565193348-f74bd3c7ccdf?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='La Pino''z Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Smokin'' Joe''s Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1414235077428-338989a2e8c0?w=600&auto=format&fit=crop&h=400&crop=bottom' WHERE name='The Pizza Baker';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Pizza Express';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Oven Story Pizza';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1578474846511-04ba529f0b88?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Slice of Heaven';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1551218808-94e220e084d2?w=600&auto=format&fit=crop&h=400&crop=bottom' WHERE name='Brick Oven Pizzeria';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1567521464027-f127ff144326?w=600&auto=format&fit=crop&h=400&crop=bottom' WHERE name='Cheesy Crust Pizza';

-- FAST FOOD (bright, energetic fast food interiors)
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1552566626-52f8b828add9?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='McDonald''s';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1579027989536-b7b1f875659b?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='KFC';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Burger King';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1571104508999-893933ded431?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Subway';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?w=600&auto=format&fit=crop&h=400&crop=top' WHERE name='Wow Momo';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1525610553991-2bede1a236e2?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Rolls N More';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1559339352-11d035aa65de?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Shake Shack';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1544148103-0773bf10d330?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Chaat Street';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Five Guys Burgers';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1568901839119-631418a3910d?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Taco Bell';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1552566626-52f8b828add9?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Haldiram''s';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1579027989536-b7b1f875659b?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Hot Bite';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Chinese Dragon';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1571104508999-893933ded431?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Street Food Shack';
UPDATE restaurants SET image_url='https://images.unsplash.com/photo-1424847651672-bf20a4b0982b?w=600&auto=format&fit=crop&h=400&crop=center' WHERE name='Quick Bites Express';

SELECT CONCAT('Updated ', ROW_COUNT(), ' rows') as result;
SELECT name, SUBSTRING(image_url, 1, 60) as image_preview FROM restaurants ORDER BY cuisine, name LIMIT 30;
