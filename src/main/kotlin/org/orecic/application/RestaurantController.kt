package org.orecic.application

import javax.ws.rs.GET
import javax.ws.rs.Path
import javax.ws.rs.PathParam
import javax.ws.rs.Produces
import javax.ws.rs.core.MediaType
import javax.ws.rs.core.Response

@Path("/restaurant")
class RestaurantController {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/{restaurantId}/menu")
    fun searchMenu(@PathParam("restaurantId") restaurantId: Long): Response {

        return Response
                .status(Response.Status.OK)
                .entity("Its fine")
                .build();

    }
}