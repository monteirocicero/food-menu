package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.Entity
import javax.persistence.JoinColumn
import javax.persistence.OneToMany
import javax.persistence.Table

@Entity
@Table(name = "item_group")
class ItemGroup : PanacheEntity() {

    @OneToMany
    @JoinColumn(name = "group_id", referencedColumnName = "id")
    lateinit var group: List<Item>

    @OneToMany
    @JoinColumn(name = "item_id", referencedColumnName = "id")
    lateinit var item: List<Item>

}