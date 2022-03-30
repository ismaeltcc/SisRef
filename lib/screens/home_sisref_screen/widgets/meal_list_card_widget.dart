import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Lista de Refeições
class  MealListCardWidget extends StatefulWidget {
  const  MealListCardWidget({ Key? key, required this.width, }) : super(key: key);

   final double width;

  @override
  State<MealListCardWidget> createState() => _MealListCardWidgetState();
}

class _MealListCardWidgetState extends State<MealListCardWidget> {


 DateTime _date = DateTime.now();

  Future<dynamic> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime.now(),
      lastDate: DateTime(3000), 
       
       initialDatePickerMode: DatePickerMode.day,
       builder: (BuildContext? context, Widget? child) {
      return Theme(
        data: ThemeData.dark().copyWith(
            colorScheme: const ColorScheme.highContrastLight(
                onPrimary: Colors.white, // selected text color
                onSurface: Color(0xFF4cb050), // default text color
                primary: Color(0xFF4cb050) // circle color
    )), child: child!)});

     if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    
    }
  }

  @override
  Widget build(BuildContext context) {

  final width = MediaQuery.of(context).size.width;

            return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(height: 12),
                             Text(
                              "Lista de Refeições",
                              style: TextStyle(
                                  fontSize: widget.width * 0.07, 
                                  fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 20),

                            SizedBox(
                              width: 190,
                              child: TextFormField(
                                cursorColor: const Color(0xFF009be5),
                                readOnly: true,
                                onTap: (){
                                   setState(() {
                                      _selectDate(context);
                                    });
                                },

                                decoration: InputDecoration( 
                                  labelText: "Pesquise por data",
                                  labelStyle: const TextStyle(
                                    color: Color(0xFF009be5),
                                    fontSize: 14,
                                  ),
                                  hintText: (DateFormat("dd/MM/yyyy").format(_date)),
                                  hintStyle:const TextStyle(
                                    color: Color(0xFF009be5),
                                    fontSize: 17,
                                    
                                  ),
                                suffixIcon: const Icon(Icons.arrow_drop_down,//BootstrapIcons.caret_down, 
                                color: Color(0xFF009be5),
                                ),
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF009be5))),
                                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF009be5))),
                                  ),
                              ),
                            ),
                         
                            const SizedBox(height: 20),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                const Icon(
                                    BootstrapIcons
                                                .ticket_perforated_fill,
                                            color: Colors.grey,
                                    ),

                                  const SizedBox(width: 20),
                                  
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [

                                   SizedBox(
                                     width: width * 0.20,
                                     child: Text(
                                       "Lanche da manhã",
                                       style: TextStyle(
                                           fontSize: widget.width * 0.04, 
                                           fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                   ),
                                  
                                  Icon(
                                       Icons.access_time,
                                       color: Colors.grey[600],
                                  ),
                                         
                                  Text(
                                      "09:20:00 - \n 09:40:00",
                                    style: TextStyle(
                                      fontSize: widget.width * 0.04, 
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ]),
                                
                                SizedBox(width: widget.width * 0.01),
                                
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color:  Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons
                                                .check_circle_outline,
                                            color: Colors.white,
                                            size: widget.width * 0.05,
                                          ),
                                         
                                         SizedBox(width: widget.width * 0.01),
                                          
                                          Text(
                                            "Já reservado",
                                            style: TextStyle(
                                               fontSize: widget.width * 0.036,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                const Icon(
                                    BootstrapIcons
                                                .ticket_perforated_fill,
                                            color: Colors.grey,
                                    ),

                                  const SizedBox(width: 20),
                                  
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [

                                   SizedBox(
                                     width: width * 0.20,
                                     child: Text(
                                       "Almoço",
                                       style: TextStyle(
                                           fontSize: widget.width * 0.04, 
                                           fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                   ),
                                  
                                  Icon(
                                       Icons.access_time,
                                       color: Colors.grey[600],
                                  ),
                                         
                                  Text(
                                      "11:00:00 - \n 13:00:00",
                                    style: TextStyle(
                                      fontSize: widget.width * 0.04, 
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ]),
                                
                                SizedBox(width: widget.width * 0.01),
                                
                                Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color:  Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons
                                                .check_circle_outline,
                                            color: Colors.white,
                                            size: widget.width * 0.05,
                                          ),
                                         
                                         SizedBox(width: widget.width * 0.01),
                                          
                                          Text(
                                            "Já reservado",
                                            style: TextStyle(
                                               fontSize: widget.width * 0.036,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             const SizedBox(height: 20),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                const Icon(
                                    BootstrapIcons
                                                .ticket_perforated_fill,
                                            color: Colors.grey,
                                    ),

                                  const SizedBox(width: 20),
                                  
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [

                                   SizedBox(
                                     width: width * 0.20,
                                     child: Text(
                                       "Lanche da tarde",
                                       style: TextStyle(
                                           fontSize: widget.width * 0.04, 
                                           fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                   ),
                                  
                                  Icon(
                                       Icons.access_time,
                                       color: Colors.grey[600],
                                  ),
                                         
                                  Text(
                                      "14:50:00 - \n 15:35:00",
                                    style: TextStyle(
                                      fontSize: widget.width * 0.04, 
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ]),
                                
                                SizedBox(width: widget.width * 0.01),
                                
                               Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color:  Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons
                                                .check_circle_outline,
                                            color: Colors.white,
                                            size: widget.width * 0.05,
                                          ),
                                         
                                         SizedBox(width: widget.width * 0.01),
                                          
                                          Text(
                                            "Já reservado",
                                            style: TextStyle(
                                               fontSize: widget.width * 0.036,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             const SizedBox(height: 20),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [

                                const Icon(
                                    BootstrapIcons
                                                .ticket_perforated_fill,
                                            color: Colors.grey,
                                    ),

                                  const SizedBox(width: 20),
                                  
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [

                                   SizedBox(
                                     width: width * 0.20,
                                     child: Text(
                                       "Lanche da noite",
                                       style: TextStyle(
                                           fontSize: widget.width * 0.04, 
                                           fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                   ),
                                  
                                  Icon(
                                       Icons.access_time,
                                       color: Colors.grey[600],
                                  ),
                                         
                                  Text(
                                      "19:50:00 - \n 20:30:00",
                                    style: TextStyle(
                                      fontSize: widget.width * 0.04, 
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ]),
                                
                                SizedBox(width: widget.width * 0.01),
                                
                                Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFf70057),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color:  Colors.white)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children:  [
                                          Icon(
                                            Icons
                                                .block_outlined,
                                            color: Colors.white,
                                            size: widget.width * 0.05,
                                          ),
                                         
                                         SizedBox(width: widget.width * 0.01),
                                          
                                          Text(
                                            "Reserva não permitida",
                                            style: TextStyle(
                                               fontSize: widget.width * 0.036,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            
                          ])
                    ));
  }
}