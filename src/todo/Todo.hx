package todo;

class Todo {
	public var id:Int;
	public var description:String;
	public var completed:Bool;

	public function new(id, description) {
		this.id = id;
		this.description = description;
    this.completed = false;
	}

	public function toString():String {
		return '$id: $description';
	}

  public function complete():Void {
    completed = true;
  }
}
