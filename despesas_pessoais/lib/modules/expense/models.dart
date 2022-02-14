class Expense {
  String? id;
  String? title;
  String? description;
  double? value;
  String? dueDate;
  int? installments;
  Coin? coin;

  Expense({
    this.id,
    this.title,
    this.description,
    this.value,
    this.dueDate,
    this.installments,
    this.coin,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'value': value,
      'due_date': dueDate,
      'installments': installments,
      'coin': coin?.toMap(),
    };
  }

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      value: map['value']?.toDouble(),
      dueDate: map['due_date'],
      installments: map['installments']?.toInt(),
      coin: map['coin'] != null ? Coin.fromMap(map['coin']) : null,
    );
  }
}

class Coin {
  String? id;
  String? name;

  Coin({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Coin.fromMap(Map<String, dynamic> map) {
    return Coin(
      id: map['id'],
      name: map['name'],
    );
  }
}
