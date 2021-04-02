package org.orecic.domain

interface RequestRestaurant {
    fun getRestaurant(restaurantId: Long): Restaurant?
}