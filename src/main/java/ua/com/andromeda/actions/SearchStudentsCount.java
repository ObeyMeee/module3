package ua.com.andromeda.actions;

import java.util.Map;

public class SearchStudentsCount implements Command {
    @Override
    public void execute() {
        Map<String, Integer> studentsCountPerGroup = databaseService.getStudentsCountPerGroup();
        studentsCountPerGroup.forEach((groupName, count) -> System.out.printf("%s ==> %d%n", groupName, count));
    }
}
