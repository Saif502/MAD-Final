class ToDo {
  String? id;
  String? name;
  String? contact;
  bool isDone;

  ToDo({
    required this.id,
    required this.name,
    required this.contact,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        name: 'John Doe',
        contact: '1234567890',
        isDone: true,
      ),
      ToDo(
        id: '02',
        name: 'Jane Doe',
        contact: '0987654321',
        isDone: true,
      ),
      ToDo(
        id: '03',
        name: 'Alice Smith',
        contact: '9876543210',
      ),
      ToDo(
        id: '04',
        name: 'Bob Johnson',
        contact: '0123456789',
      ),
    ];
  }
}
