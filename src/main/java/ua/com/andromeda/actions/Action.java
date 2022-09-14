package ua.com.andromeda.actions;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum Action {
    SEARCH_GROUP("Find group by name", new SearchGroup()),
    SEARCH_STUDENTS_COUNT("Calculate amount of students in each group", new SearchStudentsCount()),
    CALCULATE_AVERAGE_MARK("Calculate average mark for each group", new CalculateAverageMark()),
    SEARCH_TEACHER("Find teacher by first or last name", new SearchTeacher()),
    SEARCH_LESSON("Find lessons where average mark is max and min", new SearchLesson()),
    SEARCH_STUDENTS("Find students which have average mark is more than inputed", new SearchStudents()),
    EXIT("Exit", null);

    private final String description;
    private final Command command;

    public Command execute() {
        if (command != null) {
            command.execute();
        }
        return command;
    }
}
