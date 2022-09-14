package ua.com.andromeda.actions;

import ua.com.andromeda.model.Group;

import java.util.List;

public class SearchGroup implements Command {
    @Override
    public void execute() {
        List<Group> groups = databaseService.getGroupsWhereNameLike();
        System.out.println("Founded groups:\n");
        groups.forEach(System.out::println);
    }
}
