class Account {
  int? id;
  String? user;
  double? balance;
  double? totalExpenses;
  String? profile;
  
  Account({
    this.id,
    this.user,
    this.balance,
    this.totalExpenses,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user': user,
      'balance': balance,
      'total_expenses': totalExpenses,
      'profile': profile,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      id: map['id'],
      user: map['user'],
      balance: map['balance']?.toDouble(),
      totalExpenses: map['total_expenses']?.toDouble(),
      profile: map['profile'],
    );
  }
}
