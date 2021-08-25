
class Name {
  final String first;
  final String last;
  Name(this.first, this.last);
  String toString() {
    return '$first $last';
  }
}

List<Map> data = [
 
 {'first': 'Anisha', 'last': 'Bourne', 'age': 40},
 {'first': 'Dominique', 'last': 'Madden', 'age': 31},
 {'first': 'Kornelia', 'last': 'Bass', 'age': 20},
 {'first': 'Saad', 'last': 'Feeney', 'age': 2},
 {'first': 'Eric', 'last': 'Lindsey', 'age': 51},
 {'first': 'Anushka', 'last': 'Harding', 'age': 23},
 {'first': 'Samiya', 'last': 'Allen', 'age': 18},
 {'first': 'Rabia', 'last': 'Merrill', 'age': 6},
 {'first': 'Safwan', 'last': 'Schaefer', 'age': 41},
 {'first': 'Celeste', 'last': 'Aldred', 'age': 34},
 {'first': 'Taio', 'last': 'Mathews', 'age': 17},
];

//this is without map function, it doesnt work.  
// final names = <Name>[];
// for (Map rawName in data) {
//   final first = rawName['first'];
//   final last = rawName['last'];
//   final name = Name(first, last);
//   names.add(name);
// }

// this below is prefered way of looping 
List <Name> mapping() {
  final names = data.map<Name>((Map rawName){
    final first = rawName['first'];
    final last = rawName['last'];
    return Name(first, last);
  }).toList();
  return names; 
}

//shorter 
final names = data.map<Name>(
  (raw) => Name(raw['fist'], raw['last']),
).toList();

  void higherOrder() {
    final names = mapping();
    names.forEach(print);
    sorting();
    filtering();
    reducing();
    flattening();
  }
  void sorting() {
    final names = mapping();
   names.sort((a, b) => a.last.compareTo(b.last));
   print(' ');
   print('Aphabetical List of Names');
   names.forEach(print);
  }
  void filtering() {
    final names = mapping();
    final onlyMs = names.where((name) => name.last.startsWith('M'));
    print(' ');
    print('Filters name list by M');
    onlyMs.forEach(print);
  }
  void reducing() {
    final allAges = data.map<int> ((person) => person['age']);
    final total = allAges.reduce((total,age) => total + age);
    final average = total /allAges.length;
    print('The average age is $average');
    // antoher way is to   
    //   int sum = 0;
    //   for (int age in allAges) {
    //   sum +=age;
    // }

  }
  void moreReducing() {
    final names = data.map<Name>((raw) => Name(raw['first'], raw['last']))
    .where((name) => name.last.startsWith('M'))
    .where((name) => name.first.length >5)
    .toList(growable: false);
    print(names);
  }
  
  

// to flatten the collation
  void flattening() {
    final matrix = [
      [1, 3, 4],
      [3, 5, 6],
      [4, 5, 1],
    ];
    final linear = matrix.expand<int>((row) => row);
    print(linear);
  }

  void forEachLoop() {
    data.forEach((value) {
      print(value);
    });
    // short form:
    data.forEach(print);
  }


  // without cascade operator:
void play() {
  final numbers = [20, 39, 19, 4994]
  ..insert(0, 29)..sort((a, b) => a.compareTo(b));
print('The largest number in the list is ${numbers.last}');

// 
numbers.insert(0,19);
numbers.sort((a, b) => a.compareTo(b));
}
void main() {
  int? someNumber;
  increaseValue(someNumber);
  increaseValu(someNumber!);
}
void increaseValue (int? value) {
  if (value != null ) {
    value++;
  } else {
    value = 1;
  }
  print (value);
}
void increaseValu (int? number) {
  number = number ?? 0;
  number++;
  print (number);
}