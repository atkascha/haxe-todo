package todo;

import todo.Todo;

class TodoList {
	var todos:Map<Int, Todo>;
  var count:Int = 0;

	public function new() {
		this.todos = [];
	}

	public function run():Void {
		trace("
      1: Add a Todo
      2: Remove a Todo
      3: Complete a Todo
      4: List Todos
      5: Exit
    ");

    var selection:String = Sys.stdin().readLine();

		switch selection {
			case '1': this.add();
      case '2': this.remove();
			case '3': this.complete();
      case '4': this.list();
      case '5': this.exit();
		}

    this.run();
	}

	function add():Void {
		trace("\nWhat is the name of your todo?\n");

		var description:String = Sys.stdin().readLine();

		todos[count] = new Todo(count, description);

		count++;
	}

	function remove():Void {
		if (this.isEmpty()) {
			trace("\nNo Todos to remove :(");
			return;
		}

		trace("\nWhich todo would you like to remove?\n");

		var selection:String = Sys.stdin().readLine();
		var id:Int = Std.parseInt(selection);

		if (todos.exists(id)) {
			todos.remove(id);
			count--;
		} else {
			trace("\nHmm... That todo id wasn't found. Please try again.\n");
		}
	}

	function complete():Void {
		if (this.isEmpty()) {
			trace("\nNo Todos to remove :(");
			return;
		}

		trace("\nWhich Todo do you want to complete?\n");

		var selection:String = Sys.stdin().readLine();
		var id:Int = Std.parseInt(selection);

		if (todos.exists(id)) {
			todos[id].complete();
		} else {
			trace("\nHmm... That todo id wasn't found. Please try again.\n");
		}
	}

  function list():Void {
		if (this.isEmpty()) {
			trace("\nNo Todos to remove :(");
			return;
		}

    for (id => todo in this.todos) {
      var description:String = todo.description;
      var completed:Bool = todo.completed;
      trace('$id: $completed / $description');
    }
  }

  function exit():Void {
    Sys.exit(0);
  }

  function isEmpty():Bool {
		if (count <= 0) {
			return true;
		} else {
			return false;
    }
  }
}
