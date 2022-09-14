package ua.com.andromeda.config;

import org.flywaydb.core.Flyway;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateConfig {
    private static HibernateConfig instance;

    private final SessionFactory sessionFactory;

    private HibernateConfig() {
        sessionFactory = new Configuration().configure().buildSessionFactory();
        Flyway flyway = FlywayConfig.getInstance().getFlyway();
        flyway.migrate();
    }

    public static HibernateConfig getInstance() {
        if (instance == null) {
            instance = new HibernateConfig();
        }
        return instance;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
