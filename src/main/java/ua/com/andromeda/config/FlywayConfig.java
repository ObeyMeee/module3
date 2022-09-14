package ua.com.andromeda.config;

import lombok.Getter;
import org.flywaydb.core.Flyway;

@Getter
public class FlywayConfig {
    private static final String URL = "jdbc:postgresql://localhost:5432/university";
    private static final String USERNAME = "postgres";
    private static final String PASSWORD = "1337";
    private static FlywayConfig instance;
    private final Flyway flyway;

    private FlywayConfig() {
        flyway = Flyway.configure()
                .dataSource(URL, USERNAME, PASSWORD)
                .baselineOnMigrate(true)
                .locations("db/migration")
                .load();
    }

    public static FlywayConfig getInstance() {
        if (instance == null) {
            instance = new FlywayConfig();
        }
        return instance;
    }
}
