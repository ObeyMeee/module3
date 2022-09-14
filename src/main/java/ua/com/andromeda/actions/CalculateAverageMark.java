package ua.com.andromeda.actions;

import java.util.Map;

public class CalculateAverageMark implements Command {
    @Override
    public void execute() {
        Map<String, Double> averageMarkPerGroup = databaseService.getAverageMarkPerGroup();
        averageMarkPerGroup.forEach((key, value) -> System.out.printf("%s ==> %f%n", key, value));
    }
}
