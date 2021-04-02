package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.*

@Entity
@Table(name = "menu")
class Menu : PanacheEntity() {

    lateinit var name: String

    @ManyToOne
    @JoinColumn(name = "restaurant_id", referencedColumnName = "id")
    lateinit var restaurant: Restaurant

    @ManyToOne
    @JoinColumn(name = "chain_id", referencedColumnName = "id")
    lateinit var chain: Chain

    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "id")
    lateinit var item: Item

}