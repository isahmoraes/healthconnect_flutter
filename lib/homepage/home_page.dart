import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

@override
initState(){
  Get.put(HomeController());
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
      child: Column(
        children: [
          Container(
            width: 500,
            height: 600,
            margin: const EdgeInsets.all(10),
          
                    child: Center(
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset( 'assets/HARMONIZE.png',width: 300,
  height: 300,),
                          Text('Login'),
                          SizedBox(height: 10,),
                          TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                            
                          ),
                          SizedBox(height: 10,),
                          TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Senha:',
                            ),
                            
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){}, child: const Text('Entrar'))
                        ],
                      ),
                    
            ),
          ),
        ],
      ),
      )
    );
  }
}