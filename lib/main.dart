import 'package:counter1/App_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Myapp(),
      ),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Counter Application"),),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                  "${Provider.of<AppProvider>(context, listen: true).i}",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),

              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<AppProvider>(context, listen: false).add();
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Provider.of<AppProvider>(context, listen: false)
                            .Remove();
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
