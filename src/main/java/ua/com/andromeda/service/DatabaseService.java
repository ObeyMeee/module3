package ua.com.andromeda.service;

import ua.com.andromeda.model.Group;
import ua.com.andromeda.model.Lesson;
import ua.com.andromeda.model.Student;
import ua.com.andromeda.model.Teacher;
import ua.com.andromeda.repository.DatabaseRepository;
import ua.com.andromeda.utils.UserInputUtils;

import java.util.List;
import java.util.Map;

public class DatabaseService {
    private static DatabaseService instance;
    private final DatabaseRepository databaseRepository;

    private DatabaseService() {
        databaseRepository = DatabaseRepository.getInstance();
    }

    public static DatabaseService getInstance() {
        if (instance == null) {
            instance = new DatabaseService();
        }
        return instance;
    }


    public List<Group> getGroupsWhereNameLike() {
        String value = UserInputUtils.getString("Input value");
        return databaseRepository.getGroupsWhereNameLike(value);
    }

    public Map<String, Integer> getStudentsCountPerGroup() {
        return databaseRepository.getStudentsCountPerGroup();
    }

    public Map<String, Double> getAverageMarkPerGroup() {
        return databaseRepository.getAverageMarkPerGroup();
    }

    public List<Teacher> getTeachersWhereFirstNameLikeOrLastNameLike() {
        String value = UserInputUtils.getString("Input part of first name or last name");
        return databaseRepository.getTeachersWhereFirstNameLikeOrLastNameLike(value);
    }

    public Lesson getLessonWhereAverageMarkIsMax() {
        return databaseRepository.getLessonWhereAverageMarkIsMax();
    }

    public Lesson getLessonWhereAverageMarkIsMin() {
        return databaseRepository.getLessonWhereAverageMarkIsMin();
    }

    public List<Student> getStudentsWhereAverageMarkIsMoreThan() {
        double value = UserInputUtils.getDouble("Input value");
        return databaseRepository.getStudentsWhereAverageMarkIsMoreThan(value);
    }

}
