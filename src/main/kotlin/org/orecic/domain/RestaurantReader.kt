package org.orecic.domain

import javax.enterprise.context.RequestScoped

@RequestScoped
class RestaurantReader : RequestRestaurant {

    override fun getRestaurant(restaurantId: Long): Restaurant? {


        return Restaurant.retrieveById(restaurantId)

    }
}