package org.orecic.domain

import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import javax.persistence.Entity
import javax.persistence.Table

@Entity
@Table(name = "chain")
class Chain : PanacheEntity() {

    lateinit var name: String

}