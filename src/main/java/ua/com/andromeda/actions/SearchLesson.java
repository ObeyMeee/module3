package ua.com.andromeda.actions;

import ua.com.andromeda.model.Lesson;

public class SearchLesson implements Command {
    @Override
    public void execute() {
        Lesson lessonWhereAverageMarkIsMin = databaseService.getLessonWhereAverageMarkIsMin();
        Lesson lessonWhereAverageMarkIsMax = databaseService.getLessonWhereAverageMarkIsMax();
        System.out.println("lesson where average mark is min ==> " + lessonWhereAverageMarkIsMin.getName());
        System.out.println("lesson where average mark is max ==> " + lessonWhereAverageMarkIsMax.getName());
    }
}
