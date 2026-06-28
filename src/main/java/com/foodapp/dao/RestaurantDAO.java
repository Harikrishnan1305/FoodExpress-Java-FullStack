package com.foodapp.dao;

import com.foodapp.model.Restaurant;
import java.util.List;

/**
 * RestaurantDAO — Data Access Object interface for Restaurant entity.
 */
public interface RestaurantDAO {

    /**
     * Add a new restaurant.
     */
    boolean addRestaurant(Restaurant restaurant);

    /**
     * Get restaurant by primary key ID.
     */
    Restaurant getRestaurantById(int id);

    /**
     * Get all active restaurants (unpaged — used internally / admin).
     */
    List<Restaurant> getAllRestaurants();

    /**
     * Get a page of active restaurants.
     *
     * @param offset number of rows to skip  (page-1) * pageSize
     * @param limit  number of rows to return (pageSize)
     */
    List<Restaurant> getRestaurantsPaged(int offset, int limit);

    /**
     * Total count of active restaurants (used to compute total pages).
     */
    int countAllRestaurants();

    /**
     * Search restaurants by name or cuisine keyword.
     */
    List<Restaurant> searchRestaurants(String keyword);

    /**
     * Count of active restaurants matching a search keyword.
     */
    int countSearchResults(String keyword);

    /**
     * Update restaurant details.
     */
    boolean updateRestaurant(Restaurant restaurant);

    /**
     * Delete a restaurant by ID.
     */
    boolean deleteRestaurant(int id);
}

