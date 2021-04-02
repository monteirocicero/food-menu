package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.*

@Entity
@Table(name = "item")
class Item : PanacheEntity() {

    @Column(name = "is_available")
    var isAvailable:Boolean = false

    lateinit var name: String


}