import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine/screens/add_new_medicine/slider.dart';


class FormFields extends StatelessWidget {
  final List<String> weightValues = ["pills", "ml", "mg"];
  final int howManyWeeks;
  final String selectWeight;
  final Function onPopUpMenuChanged, onSliderChanged;
  final TextEditingController nameController;
  final TextEditingController amountController;
  FormFields(this.howManyWeeks,this.selectWeight,this.onPopUpMenuChanged,this.onSliderChanged,this.nameController,this.amountController);

  @override
  Widget build(BuildContext context) {
    final focus = FocusScope.of(context);
    return LayoutBuilder(
      builder:(context,constrains)=> Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: constrains.maxHeight * 0.22,
            child: TextField(
              cursorColor:Color.fromRGBO(173, 219, 208, 1.0),
              textInputAction: TextInputAction.next,
              controller: nameController,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                label:Text("pill name ",style: (
                    TextStyle(
                      color: Color.fromRGBO(22, 74, 74, 1.0),
                    )
                ),),

                enabledBorder: (

                    OutlineInputBorder(borderSide: BorderSide(
                      width: 0.9,
                      color:Colors.grey,),
                      borderRadius: BorderRadius.circular(10.0),
                    )
                ),

                focusedBorder: (
                    OutlineInputBorder(borderSide: BorderSide
                      (width: 0.9,
                      color:Color.fromRGBO(22, 74, 74, 1.0) ,
                    ),
                      borderRadius: BorderRadius.circular(10.0),

                    )

                ),


                  /*border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                      BorderSide(width: 0.5,
                        color:Colors.grey
                        //fromRGBO(173, 219, 208, 1.0),
                      //Colors.grey
                      ))*/



              ),
              onSubmitted: (val)=>focus.nextFocus(),
            ),
          ),
          SizedBox(
              height: constrains.maxHeight * 0.07,
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: constrains.maxHeight * 0.22,
                  child: TextField(
                    cursorColor:Color.fromRGBO(173, 219, 208, 1.0),

                    controller: amountController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20.0),
                        label:Text("pill amount ",style: (
                        TextStyle(
                          color: Color.fromRGBO(22, 74, 74, 1.0),
                        )
                        ),),


                        enabledBorder: (
                        OutlineInputBorder(borderSide: BorderSide(
                          width: 0.9,
                            color:Colors.grey,),
                          borderRadius: BorderRadius.circular(10.0),
                        )
                        ),

                      focusedBorder: (
                          OutlineInputBorder(borderSide: BorderSide
                            (width: 0.9,
                              color:Color.fromRGBO(22, 74, 74, 1.0) ,
                          ),
                            borderRadius: BorderRadius.circular(10.0),

                          )

                      ),
                        /*border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0.5, color: Colors.grey)),*/


                    ),
                    onSubmitted: (val)=>focus.unfocus(),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: constrains.maxHeight * 0.22,
                  child: DropdownButtonFormField(
                    onTap: ()=>focus.unfocus(),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20.0),
                      label:Text("type ",style: (
                          TextStyle(
                            color: Color.fromRGBO(22, 74, 74, 1.0),
                          )
                      ),),


                      enabledBorder: (
                          OutlineInputBorder(borderSide: BorderSide(
                            width: 0.9,
                            color:Colors.grey,),
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),

                      focusedBorder: (
                          OutlineInputBorder(borderSide: BorderSide
                            (width: 0.9,
                            color:Color.fromRGBO(22, 74, 74, 1.0) ,
                          ),
                            borderRadius: BorderRadius.circular(10.0),

                          )

                      ),


                        /*border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 0.5, color: Colors.grey))*/


                    ),
                    items: weightValues
                        .map((weight) => DropdownMenuItem(
                      child: Text(weight),
                      value: weight,
                    ))
                        .toList(),
                    onChanged: (value) => this.onPopUpMenuChanged(value),
                    value: selectWeight,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: constrains.maxHeight * 0.1,
          ),
          Container(
            height: constrains.maxHeight * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: FittedBox(
                child: Text(
                  "How long?",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Container(
            height: constrains.maxHeight * 0.18,
            child: UserSlider(this.onSliderChanged,this.howManyWeeks)
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FittedBox(child: Text('$howManyWeeks weeks')),
          )
        ],
      ),
    );
  }
}
