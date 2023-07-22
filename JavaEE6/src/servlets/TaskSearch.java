package servlets;

import models.Task;

import java.util.List;
import java.util.stream.Collectors;

public class TaskSearch {

    public static List<Task> searchTasks(String searchString, List<Task> tasks) {
        String searchLowerCase = searchString.toLowerCase();
        return tasks.stream()
                .filter(task -> task.getName().toLowerCase().contains(searchLowerCase)
                        || task.getDescription().toLowerCase().contains(searchLowerCase))
                .collect(Collectors.toList());
    }
}