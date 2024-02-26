// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:tarefas/modelo_tarefa.dart';

// Change notifier comunica todos os widgets que houve mudança.
class Controle_tarefa extends ChangeNotifier{
  // Criando lista de tarefas.
  List<Modelo_tarefa> tarefas = [];

  // Adicionar uma nova tarefa. 
  void adicionar(String conteudo) {
    tarefas.add(Modelo_tarefa(titulo: conteudo));
    notifyListeners();
  }

  // Método para concluir uma tarefa ou não. 
  void concluir(int id) {
    tarefas[id].completa = !tarefas[id].completa;
    notifyListeners();
  }

  void remover(int index) {}

}