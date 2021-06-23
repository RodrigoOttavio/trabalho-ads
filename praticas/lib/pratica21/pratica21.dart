import 'package:flutter/material.dart';
main() => runApp(
 MaterialApp(
 home: Inicio(),
 debugShowCheckedModeBanner: false,
 ),
 );
class Inicio extends StatefulWidget {
 @override
 InicioState createState() => InicioState();
}
class InicioState extends State<Inicio> {
 int indice = 0;
 final List<Widget> rotas = [
 PrimeiraRota(),
 SegundaRota(),
 ];
 void aoPressionar(int rotaSelecionada) {
 setState(
 () {
 this.indice = rotaSelecionada;
 },
 );
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 body: rotas[this.indice],
 bottomNavigationBar: BottomNavigationBar(
 currentIndex: this.indice,
 items: [
 BottomNavigationBarItem(
 icon: Icon(Icons.home),
 label: 'Primeira Rota',
 ),
 BottomNavigationBarItem(icon: Icon(Icons.assessment),
 label: 'Segunda Rota',
 ),
 ],
 onTap: (int pageTapped) {
 aoPressionar(pageTapped);
 },
 ),
 );
 }
}
class PrimeiraRota extends StatefulWidget {
 @override
 PrimeiraRotaState createState() => PrimeiraRotaState();
}
class PrimeiraRotaState extends State<PrimeiraRota> {
 @override
 Widget build(BuildContext context) {
 TextStyle estilo = TextStyle(
 fontSize: 30,
 fontWeight: FontWeight.bold,
 color: Colors.green,
 );
 return Center(
 child: Text(
 'Primeira Rota',
 style: estilo,
 ),
 );
 }
}
class SegundaRota extends StatefulWidget {
 @override
 SegundaRotaState createState() => SegundaRotaState();
}
class SegundaRotaState extends State<SegundaRota> {
 @override
 Widget build(BuildContext context) {
 TextStyle estilo = TextStyle(
 fontSize: 30,
 fontWeight: FontWeight.bold,
 color: Colors.amber[900],);
 return Center(
 child: Text(
 'Segunda Rota',
 style: estilo,
 ),
 );
 }
}
