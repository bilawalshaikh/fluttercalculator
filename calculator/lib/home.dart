import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
var result="";




Widget btn(var textt){
return ElevatedButton(
  
        style: ElevatedButton.styleFrom(primary:Color(0xff2CD879) ),
  onPressed: (){
  setState(() {
      result= result+textt;
    });
}, child: Text(textt)


);
}

clear(){
setState(() {
  result="";
});

}

output(){

  Parser p=Parser();
  Expression exp =p.parse(result);
  ContextModel cm=ContextModel();
  double eval=exp.evaluate(EvaluationType.REAL, cm);

  setState(() {
      result=eval.toString();
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
// Center(
  // child: 
    Container(
  margin: const EdgeInsets.all(3.0),
  padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(border:Border.all(color: Colors.blueAccent)),  
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
  
      Container(
          color: Color(0xff2CD879),

  //       margin: const EdgeInsets.all(10),
  // padding: const EdgeInsets.all(10),
  // decoration: BoxDecoration(border:Border.all(color: Colors.blueAccent,width:0)),  
    //  borderSide:BorderSide(color: )
        child: Text(result,style: TextStyle(
  
          fontSize: 30,fontWeight: FontWeight.bold,
          color: Colors.white,
          backgroundColor: Color(0xff2CD879)
        ),),
      ),
  
  
  
  Row(
  
      mainAxisAlignment: MainAxisAlignment.spaceAround,
  
      children: [
  
  btn("1"),
  
  btn("2"),
  
  btn("3"),
  
  btn("4"),
  
  ],
  
  ),
  
  
  
  Row
  
  (
  
       mainAxisAlignment: MainAxisAlignment.spaceAround,
  
   
  
      children: [
  
  btn("5"),
  
  btn("6"),
  
  btn("7"),
  
  btn("8"),
  
  ],
  
  ),
  
  Row(
  
       mainAxisAlignment: MainAxisAlignment.spaceAround,
  
   
  
      children: [
  
  btn("9"),
  
  btn("0"),
  
  btn("+"),
  
  btn("-"),
  
  ],
  
  ),
  
  
  
  Row(
  
       mainAxisAlignment: MainAxisAlignment.spaceAround,
  
   
  
      children: [
  
  btn("*"),
  
  btn("/"),
  
  ElevatedButton(
            style: ElevatedButton.styleFrom(primary:Color(0xff2CD879) ),

    onPressed: clear, child: Text("Clear")),
  
      ElevatedButton(
                style: ElevatedButton.styleFrom(primary:Color(0xff2CD879) ),

        onPressed: output, child: Text("=")),

  
  ],
  
  ),
  
  
  
  
  
  ],),
    ),
// )
    );
  }
}

