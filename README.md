# Haxe project

This is an example Haxe project scaffolded by Visual Studio Code.

Without further changes the structure is following:

 * `src/Main.hx`: Entry point Haxe source file
 * `build.hxml`: Haxe command line file used to build the project
 * `README.md`: This file


### To run...

haxe .\build.hxml

### Todo App

With help from [this](http://www.unexpected-vortices.com/haxe/brief-tutorial.html) preview.

### Example usage in PowerShell

```PS
PS C:\Users\atkascha\Desktop\todohx> haxe .\build.hxml
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

1
src/todo/TodoList.hx:36:
What is the name of your todo?

reticulate splines
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

4
src/todo/TodoList.hx:91: 0: false / reticulate splines
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

3
src/todo/TodoList.hx:70:
Which Todo do you want to complete?

0
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

4
src/todo/TodoList.hx:91: 0: true / reticulate splines
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

2
src/todo/TodoList.hx:51:
Which todo would you like to remove?

0
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

4
src/todo/TodoList.hx:84:
No Todos to remove :(
src/todo/TodoList.hx:14:
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit

5
PS C:\Users\atkascha\Desktop\todohx>
```