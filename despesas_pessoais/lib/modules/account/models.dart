class Account {
  double? balance;
  double? totalExpenses;
  String? profile;
  
  Account({
    this.balance,
    this.totalExpenses,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return {
      'balance': balance,
      'total_expenses': totalExpenses,
      'profile': profile,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      balance: map['balance']?.toDouble(),
      totalExpenses: map['total_expenses']?.toDouble(),
      profile: map['profile'],
    );
  }
}
