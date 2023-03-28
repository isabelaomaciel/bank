
class Conta {
  String nome;
  int agencia;
  int numero;
  String tipoDeConta;
  double saldo;

  Conta(this.nome, this.agencia, this.numero, this.saldo, this.tipoDeConta);


  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
    } else {
      print('valor insuficiente');
    }
  }

  bool transferir(double valor, Conta segunda) {
    if (saldo >= valor) {
      saldo -= valor;
      segunda.depositar(valor);
      print('Transferência feita com sucesso');

      return true;
    } else {
      print('saldo insuficiente');
      return false;
    }
  }
}

  void main() {
    Conta primeira = Conta('Maria', 123, 45678, 2000, 'Corrente');
    print('Olá ${primeira.nome}! O saldo da sua conta é: ${primeira.saldo}');

    primeira.depositar(200);
    print(primeira.saldo);

    primeira.sacar(0);
    print(primeira.saldo);

    Conta segunda = Conta('Marisa', 123, 78910, 1500, 'Corrente');

    primeira.transferir(200, segunda);
    print(primeira.saldo);
  }
