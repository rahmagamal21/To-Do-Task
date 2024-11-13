# to_do_task

Project Overview
This Flutter project is a to-do list application with a focus on responsive design and clean architecture principles. It uses BLoC for state management, Dio for HTTP requests, Retrofit for API integration, and follows a layered structure to separate concerns.

Key Features:
Add a Task: Users can add tasks with a dialog input.
Update Task: Tasks can be marked as complete or incomplete.
Delete Task: Tasks can be deleted with a swipe gesture.
Search Tasks: Users can search tasks with a search bar.
Task Persistence: Tasks are saved locally and synced with a remote server.
Usage Instructions
1. Add a Task
UI: A floating action button (+) at the bottom-right of the screen allows users to add a task.
How to Add: Click the + button, input the task description in the dialog box, and save it. The task is added to the list and saved locally.
Task Persistence: After adding a task, it is also saved in SharedPreferences, ensuring persistence even if the app is restarted.
2. Mark a Task as Completed
UI: Each task has a checkbox next to its description.
How to Mark as Complete: Users can tap the checkbox to mark the task as completed. Completed tasks have a line-through effect and their text is bolded.
State: The task's completion status is updated both in the UI and the local storage (SharedPreferences).
3. Delete a Task
UI: The Slidable widget allows users to delete tasks by sliding the task tile to the left.
How to Delete: Swipe the task to reveal the Delete button (red). Tap the Delete button to remove the task from the list.
State: The task is removed from both the UI and the local storage (SharedPreferences).
4. Search for Tasks
UI: At the top of the screen, there's a search bar where users can input a search query.
How to Search: Start typing in the search bar to filter tasks. The app uses debounced search to avoid unnecessary filtering during typing.
Search Functionality: The tasks are filtered based on the query, displaying only the tasks that match the search terms.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
