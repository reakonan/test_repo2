<%@ page import="servlets.TaskSearch" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Task Manager</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">All tasks</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        </form>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </div>
</nav>
<br>
<%
    String searchString = "Java";

    List<Task> tasks = db.DBManager.getTasks();

    List<Task> searchResults = TaskSearch.searchTasks(searchString, tasks);

    for (Task task : searchResults) {
        out.println(task.getName());
    }
%>
