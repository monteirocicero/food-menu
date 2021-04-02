package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheCompanion
import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.*

@Entity
@Table(name = "restaurant")
class Restaurant  : PanacheEntity() {

    companion object: PanacheCompanion<Restaurant> {
        fun retrieveById(resturantId: Long)= findById(resturantId)
    }

    lateinit var name: String

    @OneToMany(mappedBy =  "restaurant")
    lateinit var menu: List<Menu>


}