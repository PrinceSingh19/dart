void main() {
  Map<String, int> data = {
    "number1": 20,
    "number2": 30,
    "number3": 40,
  };

  print(data);

  //adding the data into map
  data["number4"] = 50;
  print(data);

  // upating data
  data["number2"] = 40;
  print(data);

  // deleting data only requires the key
  data.remove("number2");
  print(data);

  // adding multiple entries
  data.addAll({
    "number6": 70,
    "number7": 80,
    "number8": 90,
  });
  print(data);

  // looping through maps data
  data.forEach((key, value) {
    print('${key}: ${value}');
  });

  // List of Maps
  List<Map<String, int>> marks = [
    {"english": 20, "math": 50, "history": 60},
    {"english": 45, "math": 53, "history": 76},
    {"english": 48, "math": 57, "history": 90},
  ];

  print("===");
  marks
      .map((e) => {
            e.forEach((key, value) {
              print('$key: $value');
            })
          })
      .toList();
}
