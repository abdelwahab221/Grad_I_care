import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/savedSuccessfully.dart';
import 'package:flutter_application_1/fonts/font.dart';

class AddStack extends StatefulWidget {
  const AddStack({super.key});

  @override
  State<AddStack> createState() => _AddStackState();
}

var dropdownvalue1 = ' Male ';
bool isLouding = false;
// List of items in our dropdown menu
var Gender = [
  ' Male ',
  ' Female ',
];

var departments = ' Bones ';
// List of items in our dropdown menu
var departmentname = [
  ' Bones ',
  ' dental ',
  ' cardiology ',
  ' neurology ',
  ' oncology ',
  ' otorhinolaryngology ',
  ' renal medicine ',
  ' pulmonology ',
  ' ophthalmology ',
  ' gastroenterology ',
  ' dermatology ',
];

var NameController = TextEditingController();
var IdController = TextEditingController();
var DoctorController = TextEditingController();
var departmentController = TextEditingController();
var HospitalController = TextEditingController();

class _AddStackState extends State<AddStack> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: double.infinity,
          height: 573,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/page-1/images/rectangle-33-bg.png",
                  fit: BoxFit.fitWidth,
                  color: Colors.white.withOpacity(0.2),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
              Container(
                height: 573,
                width: double.infinity,
                margin: const EdgeInsets.only(right: 189, left: 189),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // addpatientdatavHv (1:2137)
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                          child: Text(
                            'Add patient data',
                            style: SafeGoogleFont(
                              'Yeseva One',
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff159eec),
                            ),
                          ),
                        ),
                        Container(
                          // loremipsumdolorsitametconsecte (1:2138)
                          constraints: const BoxConstraints(
                            maxWidth: 407,
                          ),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque placerat scelerisque tortor ornare ornare. Convallis felis vitae tortor augue. Velit nascetur proin massa in. Consequat faucibus porttitor enim et.',
                            style: SafeGoogleFont(
                              'Work Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff202124),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(children: [
                      Container(
                        width: 500,
                        height: 445,
                        color: const Color.fromARGB(255, 31, 43, 108),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            right: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    width: 245,
                                    height: 50,
                                    child: TextFormField(
                                      cursorColor: Colors.white,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffcfefe),
                                      ),
                                      controller: NameController,
                                      onChanged: (String value) {},
                                      onFieldSubmitted: (String value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter the name";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.only(left: 9),
                                        hintText: "Name",
                                        hintStyle: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              245, 252, 254, 254),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(
                                    color: Colors.white,
                                    thickness: 4,
                                    height: 10),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            left: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    //width: 245,
                                    height: 50,
                                    child: TextFormField(
                                      cursorColor: Colors.white,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffcfefe),
                                      ),
                                      controller: IdController,
                                      onChanged: (String value) {},
                                      onFieldSubmitted: (String value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter the Id";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.only(left: 9),
                                        hintText: "ID",
                                        hintStyle: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              245, 252, 254, 254),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            right: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    width: 245,
                                    height: 50,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isExpanded: true,
                                        dropdownColor: const Color.fromARGB(
                                            255, 31, 43, 108),
                                        // Initial Value
                                        value: dropdownvalue1,
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfffcfefe),
                                        ),

                                        // Down Arrow Icon
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                        ),

                                        // Array list of items
                                        items: Gender.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                          );
                                        }).toList(),
                                        // After selecting the desired option,it will
                                        // change button value to selected value
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownvalue1 = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            left: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    //width: 245,
                                    height: 50,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      cursorColor: Colors.white,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffcfefe),
                                      ),
                                      onChanged: (String value) {},
                                      onFieldSubmitted: (String value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter the phone";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.only(left: 9),
                                        hintText: "phone",
                                        hintStyle: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              245, 252, 254, 254),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 0.7,
                                                  color: Colors.white),
                                              right: BorderSide(
                                                  width: 0.7,
                                                  color: Colors.white))),
                                      width: 245,
                                      height: 50,
                                      child: const DatePicker()),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            left: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    //width: 245,
                                    height: 50,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      cursorColor: Colors.white,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffcfefe),
                                      ),
                                      onChanged: (String value) {},
                                      onFieldSubmitted: (String value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter the Hospital name";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.only(left: 9),
                                        hintText: "Hospial",
                                        hintStyle: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              245, 252, 254, 254),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            right: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    width: 245,
                                    height: 50,
                                    child: TextFormField(
                                      cursorColor: Colors.white,
                                      style: SafeGoogleFont(
                                        'Work Sans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffcfefe),
                                      ),
                                      controller: DoctorController,
                                      onChanged: (String value) {},
                                      onFieldSubmitted: (String value) {},
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Enter the Docto's name";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.only(left: 9),
                                        hintText: "Doctor",
                                        hintStyle: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromARGB(
                                              245, 252, 254, 254),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(
                                    color: Colors.white,
                                    thickness: 4,
                                    height: 10),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 0.7,
                                                color: Colors.white),
                                            right: BorderSide(
                                                width: 0.7,
                                                color: Colors.white))),
                                    width: 245,
                                    height: 50,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        isExpanded: true,
                                        dropdownColor: const Color.fromARGB(
                                            255, 31, 43, 108),
                                        value: departments,
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xfffcfefe),
                                        ),
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                        ),
                                        items:
                                            departmentname.map((String items) {
                                          return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                          );
                                        }).toList(),
                                        onChanged: (String? value) {
                                          setState(() {
                                            departments = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: 499,
                              height: 190,
                              child: TextField(
                                onSubmitted: (doctorDiagonsis) {
                                  print(doctorDiagonsis);
                                },
                                maxLines: 10,
                                style: SafeGoogleFont(
                                  'Work Sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xfffcfefe),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Doctor's diagnosis",
                                  //alignLabelWithHint: true,
                                  contentPadding:
                                      const EdgeInsets.only(left: 9),
                                  hintStyle: SafeGoogleFont(
                                    'Work Sans',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        233, 252, 254, 254),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 500,
                              color: const Color(0xffbed2f7),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffBFD2F8)),
                                onPressed: () async {
                                  if (isLouding) return;
                                  setState(() {
                                    isLouding = true;
                                  });
                                  await Future.delayed(
                                      const Duration(seconds: 4));

                                  if (!mounted) return;

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SavedSuccessfully()),
                                  );

                                  setState(() {
                                    isLouding = false;
                                  });
                                },
                                child: isLouding
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Please wait..   ',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Work Sans',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff1f2b6c),
                                            ),
                                          ),
                                          const CircularProgressIndicator(
                                            color: Color(0xff1f2b6c),
                                          ),
                                        ],
                                      )
                                    : Text(
                                        'SAVE',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Work Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff1f2b6c),
                                        ),
                                      ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                    /**
                                     * 
                                     * 
                                     * 
                                     * end of patient data 
                                     * 
                                     * 
                                     */
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({
    super.key,
    this.restorationId,
  });

  final String? restorationId;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerState extends State<DatePicker> with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.now(),
          firstDate: DateTime(2023),
          lastDate: DateTime(2027),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          backgroundColor: const Color(0xff1f2b6c),
          content: Text(
            '  Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}',
            textAlign: TextAlign.center,
            style: SafeGoogleFont(
              'Work Sans',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff1f2b6c),
            alignment: Alignment.centerLeft),
        onPressed: () {
          _restorableDatePickerRouteFuture.present();
        },
        child: Text(
          '${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}',
          style: SafeGoogleFont(
            'Work Sans',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
