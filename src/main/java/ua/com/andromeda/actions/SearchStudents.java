package ua.com.andromeda.actions;

import ua.com.andromeda.model.Student;

import java.util.List;

public class SearchStudents implements Command {
    @Override
    public void execute() {
        List<Student> students = databaseService.getStudentsWhereAverageMarkIsMoreThan();
        System.out.println("Founded students:\n");
        students.forEach(System.out::println);
    }
}
