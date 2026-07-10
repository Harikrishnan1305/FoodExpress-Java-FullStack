USE food_ordering_db;

CREATE TEMPORARY TABLE temp_empty_rests AS 
SELECT id FROM restaurants WHERE id NOT IN (SELECT DISTINCT restaurant_id FROM menu);

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Chef''s Special Combo', 'A grand assortment of our best dishes.', 299.00, 4.5, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500&auto=format', 1 FROM temp_empty_rests;

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Classic Fried Rice', 'Wok-tossed rice with fresh veggies and secret sauce.', 199.00, 4.3, 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500&auto=format', 1 FROM temp_empty_rests;

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Spicy Noodles', 'Hot and spicy noodles with a kick of garlic.', 179.00, 4.2, 'https://images.unsplash.com/photo-1552611052-33e04de081de?w=500&auto=format', 1 FROM temp_empty_rests;

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Delicious Dessert', 'Perfect sweet ending to your meal.', 120.00, 4.8, 'https://images.unsplash.com/photo-1551024506-0bccd828d307?w=500&auto=format', 1 FROM temp_empty_rests;

INSERT INTO menu (restaurant_id, name, description, price, rating, image_url, is_available)
SELECT id, 'Refreshing Beverage', 'Cool down with our signature drink.', 79.00, 4.1, 'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?w=500&auto=format', 1 FROM temp_empty_rests;

DROP TEMPORARY TABLE temp_empty_rests;
