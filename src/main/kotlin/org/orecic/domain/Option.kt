package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.*

@Entity
@Table(name = "option")
class Option : PanacheEntity() {

    lateinit var name: String

    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "id")
    lateinit var item: Item
}