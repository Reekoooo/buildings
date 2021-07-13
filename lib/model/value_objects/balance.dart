const double MIN_ALLOWED_BALANCE = 0.0;

class Balance{
  late final double _balance;
  double get balance =>_balance;
  Balance(double balance){
    if(! _validBalance(balance)) throw
    _balance = balance;
  }
  bool _validBalance(double balance) => balance >= MIN_ALLOWED_BALANCE;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Balance && runtimeType == other.runtimeType && _balance == other.balance;

  @override
  int get hashCode => _balance.hashCode;
}