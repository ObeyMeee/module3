package ua.com.andromeda.utils;

import lombok.SneakyThrows;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

public class UserInputUtils {
    private static final BufferedReader READER = new BufferedReader(new InputStreamReader(System.in));

    private UserInputUtils() {

    }

    @SneakyThrows
    public static int getInt(String hint) {
        System.out.print(hint + " ==> ");
        return Integer.parseInt(READER.readLine());
    }

    @SneakyThrows
    public static double getDouble(String hint) {
        System.out.print(hint + " ==> ");
        return Double.parseDouble(READER.readLine());
    }

    @SneakyThrows
    public static String getString(String hint) {
        System.out.print(hint + " ==> ");
        return READER.readLine();
    }

    public static int selectGivenActions(int amountOfActions, List<String> actionsList) {
        int userInput;
        do {
            System.out.println("\nSelect option:\n");
            for (int i = 0; i < amountOfActions; i++) {
                System.out.printf("%d. %s%n", i, actionsList.get(i));
            }
            userInput = getInt("Your input");
        } while (userInput < 0 || userInput >= amountOfActions);
        return userInput;
    }
}
