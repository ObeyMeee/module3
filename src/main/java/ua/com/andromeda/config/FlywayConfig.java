package ua.com.andromeda.config;

import lombok.Getter;
import org.flywaydb.core.Flyway;

@Getter
public class FlywayConfig {
    private static final String URL = "jdbc:postgresql://ec2-52-200-5-135.compute-1.amazonaws.com/df9o8qhhhdfp63";
    private static final String USERNAME = "gyxtucboengfyq";

    private static final String PASSWORD = "2476f1e2b7474f8e2b440b755a82ade63eb7421306ea7d5e61c328da5ffd6976";
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
