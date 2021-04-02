package org.orecic.application

import org.orecic.domain.RequestRestaurant
import javax.inject.Inject
import javax.ws.rs.GET
import javax.ws.rs.Path
import javax.ws.rs.PathParam
import javax.ws.rs.Produces
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response

@Path("/restaurant")
class RestaurantController {

    @Inject
    lateinit var requestRestaurant: RequestRestaurant

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{restaurantId}/menu")
    fun searchMenu(@PathParam("restaurantId") restaurantId: Long): Response {

        val responseRestaurant = requestRestaurant.getRestaurant(restaurantId)

        return Response
                .status(Response.Status.OK)
                .entity(responseRestaurant)
                .build();

    }
}