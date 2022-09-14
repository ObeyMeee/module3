package ua.com.andromeda.actions;

import ua.com.andromeda.service.DatabaseService;

public interface Command {
    DatabaseService databaseService = DatabaseService.getInstance();

    void execute();
}
