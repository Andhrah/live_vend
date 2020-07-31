import 'package:flutter/material.dart';

class SignUpCompanyNamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpCompanyNamePageState();
}

class _SignUpCompanyNamePageState extends State<SignUpCompanyNamePage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _companyNameController;

  String _companyName;

  @override
  void initState() {
    _companyNameController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF110027),
       body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  padding: EdgeInsets.only(
                    left: 15.0, 
                    top: 35.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage('images/live_vend_logo.png'),
                          semanticLabel: 'Live Vend logo',
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        child: Image(
                          image: AssetImage('images/live.png'),
                          width: MediaQuery.of(context).size.width * 0.6,
                        )
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4
                  ),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Form(
                    key: _formKey,
                    onChanged: () {
                      Form.of(primaryFocus.context).save();
                      setState(() {
                        _companyName = _companyNameController.text;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 140.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 20,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Register',
                                      textScaleFactor: 1.7,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),

                                    SizedBox(height: 20),

                                    Text(
                                      'Company Name',
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextFormField(
                            key: Key('companyName'),
                            controller: _companyNameController,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),
                            decoration: InputDecoration(
                              hintText: 'Type in your company name',
                              hintStyle: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white24,
                              ),
                              enabledBorder: UnderlineInputBorder(      
                                borderSide: BorderSide(
                                  color: Colors.white24
                                ),
                              ), 
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white24
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 30),

                        _companyNameController.text.length == 0 ?
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 37.0,
                                width: 37.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white24
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.0)
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white24,
                                    size: 20.0,
                                  ),
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(right: 15.0),
                                height: 37.0,
                                width: 37.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white24
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.0)
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/signUpPasswordPage');
                                  },
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white24,
                                    size: 20.0,
                                  ),
                                ),
                              )
                            ],
                          )
                        ) :

                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 15.0, left: 15.0),
                                height: 50.0,
                                width: 98.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.0)
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/signUpEmailPage');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'OK',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFF110027),
                                          fontSize: 16.0,
                                        ),
                                      ),

                                      SizedBox(width: 5),


                                      Icon(
                                        Icons.check,
                                        color: Color(0XFF110027),
                                        size: 16.0,
                                      ),
                                    ],
                                  )
                                ),
                              ),

                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 15.0),
                                      height: 37.0,
                                      width: 37.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white24
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(3.0)
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushNamed('/signUp');
                                        },
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white24,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(right: 15.0),
                                      height: 37.0,
                                      width: 37.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white24
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(3.0)
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.of(context).pushNamed('/signUpPhonePage');
                                        },
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white24,
                                          size: 20.0,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ),


                        SizedBox(height: 50),
                        
                        SizedBox(height: MediaQuery.of(context).size.height * 0.1),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/');
                          },
                          child: RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyle(
                                color: Colors.white24,
                                fontSize: 16.0,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 16.0,
                                  )
                                ),
                              ]
                            )
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
       )
    );
  }
}