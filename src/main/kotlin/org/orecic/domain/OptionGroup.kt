package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.*

@Entity
@Table(name = "option_group")
class OptionGroup : PanacheEntity() {

    @ManyToOne
    @JoinColumn(name = "group_id")
    lateinit var group: Option

    @ManyToOne
    @JoinColumn(name = "option_id")
    lateinit var option: Option

}