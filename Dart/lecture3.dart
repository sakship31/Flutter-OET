 class person {
    String first;
    String _second;
  }
  
  void main() {
    person a = new person();
    a.first = 'New first';
    a._second = 'New second';
    print('${a.first}: ${a._second}');
  }