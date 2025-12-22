import 'package:flutter_test/flutter_test.dart';
class ProximoEventoJogador{
  final String id;
  final String nome;
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

  });

  String getIniciais(){
      final nomes = nome.split(' ');
      return'${nomes[0][0]}${nomes[1][0]}';
  }

}
void main(){
  test('Deve retornar a primeira letra  do primeiro e ultimo nome',() {
    final jogador = ProximoEventoJogador(
      id: "",
      nome: "Cleverton Oliveira",
      confirmado: true,
    ); 
    
    expect(jogador.getIniciais(), 'CO');
  });
} 