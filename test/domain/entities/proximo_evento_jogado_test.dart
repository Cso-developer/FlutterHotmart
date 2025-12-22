import 'package:flutter_test/flutter_test.dart';
class ProximoEventoJogador{
  final String id;
  final String nome;
  late  String iniciais;// o larte diz para o compilador do dart que e gente sabe que etse campo é obrigatorio e iremos preenche-lo após a criação do objeto 
  final String? foto;
  final String? posicao;
  final bool confirmado ;
  final DateTime? dataConfirmacao;

  ProximoEventoJogador({
    required this.id,
    required this.nome,
    required this.confirmado,
    this.foto,
    this.posicao,
    this.dataConfirmacao

  }){
    iniciais = _getIniciais();
  }



  String _getIniciais(){
      final nomes = nome.split(' ');
      final letra1nome1= nomes.first[0];
      final letra1UltimoNome = nomes.last[0];
      return'${letra1nome1}${letra1UltimoNome}';
  }

}

// escopo de teste

void main(){
  String iniciais (String nome)=> ProximoEventoJogador(id: "", nome: nome, confirmado: true).iniciais;
  test('Deve retornar a primeira letra  do primeiro e ultimo nome',() {
    // por convenção chamamos o objeto que etsá sendo testado de sut(system under test) 
    expect(iniciais("Cleverton Oliveira"), 'CO');
    expect(iniciais("Cleverton Oliveira Santos"), 'CS');
  });
} 