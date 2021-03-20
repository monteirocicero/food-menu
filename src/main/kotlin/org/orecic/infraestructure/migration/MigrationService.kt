package org.orecic.infraestructure.migration

import org.flywaydb.core.Flyway
import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject

@ApplicationScoped
class MigrationService : Logging {

    @Inject
    lateinit var flyway: Flyway

    val logger = logger()

    fun checkMigration() {
        logger.info(flyway.info().current().version.toString())
    }


}