import 'package:praticando/praticando.dart' as praticando;

void main() {
  const String nome = 'Isabela';
  var idade = 5;
  double altura = 1.65;
  bool geek = true;
  final apelido;
  bool maiorDeIdade;

  if(idade >= 18){
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  apelido = 'Isa';

  List<dynamic> caracteristicas = [nome, idade, altura, geek, apelido];




  print('Olá! meu nome é $nome, \n'
      ' mas pode me chamar de $apelido,\n'
      ' tenho $idade anos, \n'
      ' gosto da cultura geek? $geek, \n'
      ' e tenho $altura de altura. Sou maior de idade? $maiorDeIdade');
}
