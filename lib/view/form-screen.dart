import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  var itemsCarTypeMap = {'প্রাইভেট কার':'car', 'মোটর সাইকেল':'bike', 'ট্রাক':'truck', 'বাস':'bus'};
  String selectedCar = '';
  List carList = [];
  CarDropDown(){
    itemsCarTypeMap.forEach((key, value) {
      carList.add(key);
    });
  }

  var itemsCarBrandMap = {'Toyota':'car', 'Ford':'car', 'Ferrari':'car', 'Audi':'car',
    'Suzuki':'bike', 'Honda':'bike', 'Yamaa':'bike', 'BYD':'truck', 'Daimler':'truck', 'Volvo':'bus'
  };
  String selectedCarBrand = '';
  List carBrandList = [];
  CarBrandDropDown(carType){
    itemsCarBrandMap.forEach((key, value) {
      if(carType==value)
        carBrandList.add(key);
    });
    selectedCarBrand = carBrandList[0];
  }

  @override
  void initState() {
    CarDropDown();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("যানবাহন এন্ট্রি",),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
    child: Container(
    color: Colors.white,
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
              children: [
                Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: "গাড়ির ধরন",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                            items: carList
                                .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item))
                                )
                                .toList(),
                            onChanged: (item) {
                              setState((){
                                carBrandList=[];
                                CarBrandDropDown(itemsCarTypeMap[item]);
                                selectedCar=item!;
                              });
                            },
                          ),
                          SizedBox(height: heightBfields,),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: "ব্রান্ডের নাম",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                            items: carBrandList
                                .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(item))
                            )
                                .toList(),
                            onChanged: (item) {
                              setState(()=>selectedCarBrand=item!);
                            },
                          ),
                          SizedBox(height: heightBfields,),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text("মডেল"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                            // validator: validatorEmptyCheck,
                          ),
                          SizedBox(height: heightBfields/2,),
                          const Divider(thickness: 1, color: Colors.indigo,),
                          SizedBox(height: heightBfields/2,),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text("রেজিস্ট্রেশন নং "),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                            // validator: validatorEmptyCheck,
                          ),
                          SizedBox(height: heightBfields/2,),
                          const Divider(thickness: 1, color: Colors.indigo,),
                          SizedBox(height: heightBfields/2,),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text("ইঞ্জিন নং"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                            // validator: validatorEmptyCheck,
                          ),
                          SizedBox(height: heightBfields,),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text("চেসিস নং"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.indigo,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(borderRadius)
                              ),
                            ),
                          ),
                          SizedBox(height: heightBfields+10,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(200, 50),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
                                  textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  backgroundColor: Colors.indigo,
                                  foregroundColor: Colors.white
                              ),
                              child: const Text("Register"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]
          )

        ],
      ),
    ),

    ),
    );
  }
}
