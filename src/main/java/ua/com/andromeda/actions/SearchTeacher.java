package ua.com.andromeda.actions;

import ua.com.andromeda.model.Teacher;

import java.util.List;

public class SearchTeacher implements Command {
    @Override
    public void execute() {
        List<Teacher> teachers = databaseService.getTeachersWhereFirstNameLikeOrLastNameLike();
        System.out.println("Founded teachers:\n");
        teachers.forEach(System.out::println);
    }
}
