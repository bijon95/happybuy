import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happybuy/Controller/controller.dart';
import 'package:happybuy/Setting/Repositiory.dart' as ripo;

class CategoryList extends StatefulWidget {
  @override
  _CreateCategoryState createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<CategoryList> {
  final Controller _controller = Get.put(Controller());

  bool isSelect = false;
  int index_select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Category List"),
        actions: <Widget>[
      IconButton(
      icon: Icon(
        Icons.add_circle_outline,
        color: ripo.iconColor,
      ),
      onPressed: () {
        addAlertDialog(context);
      },
    )
    ]
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Obx(() {
          if (_controller.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            );
          } else {
            return ListView.builder(
                itemCount: _controller.catList.length,
                itemBuilder: (BuildContext contex, int index) {
                  return GestureDetector(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 8),
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 8),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: ripo.listItemBg,
                        borderRadius: BorderRadius.circular(10),
                        border: index_select == index && isSelect
                            ? Border.all(width: 3, color: Colors.red)
                            : null,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _controller.catList[index].name,
                            style:
                                TextStyle(fontSize: 24, color: ripo.iconColor),
                          ),
                          index_select == index && isSelect
                              ? GestureDetector(
                                child: Icon(
                                    Icons.delete,
                                    color: ripo.iconColor,
                                  ),
                            onTap: (){
                              deleteAlertDialog(context, _controller.catList[index].name,);
                            },
                              )
                              : Icon(
                                  Icons.arrow_forward_ios,
                                  color: ripo.iconColor,
                                ),
                        ],
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        isSelect = false;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        index_select = index;
                        isSelect = true;
                      });
                    },
                  );
                });
          }
        }),
      ),
    );
  }

  addAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Add Category"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Add New Category"),
      content:TextField(
       // controller: ct_amount,
        keyboardType:TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue[100],
          hintText: "Barger",
          contentPadding: const EdgeInsets.only(
              left: 30.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  deleteAlertDialog(BuildContext context,name) {

    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Delete"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Are you Sure ?"),
      content:Text("Delete category $name"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
