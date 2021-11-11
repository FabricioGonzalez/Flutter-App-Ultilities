class TodoModel {
  String _task = '';
  bool _done = false;
  String _date = '';
  String _limitDate = '';

  String get task {
    return this._task;
  }

  bool get done {
    return this._done;
  }

  String get limitDate {
    return this._limitDate;
  }

  String get date {
    return this._date;
  }

  TodoModel(
      {String task = '',
      bool done = false,
      String date = '',
      String limitDate = ''}) {
    this._task = task;
    this._done = done;
    this._date = date;
    this._limitDate = limitDate;
  }

  void printData() {
    print('$task, $done, $date, $limitDate');
  }
}
