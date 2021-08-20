import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({ Key key }) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool edit = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child :  Image.network("https://img2.pngdownload.id/20180405/acq/kisspng-male-avatar-user-profile-clip-art-profile-5ac69e04c061f0.400875961522966020788.jpg")
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 16.0,
                      spreadRadius: 0.5,
                      offset: Offset(
                        0.7,
                        0.7,
                      )
                    )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('NAMA :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              edit ? Expanded(
                                child: Container(
                                  height: 40,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                                      ),
                                      contentPadding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                                    ),
                                  ),
                                ),
                              ) : 
                              Text('ALIP KATES NIANTO ',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                              
                            ]
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('JENIS KELAMIN :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text('GAK JOKO ',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                              
                            ]
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('AGAMA :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text('ATHESI SEMI AGNOSTIK',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                              
                            ]
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('ALAMAT :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              Expanded(
                                child: Text('WONOAYU INDAH REGENCY',
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                ),
                              )
                            ]
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('JURUSAN :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text('TEKNIK MENEK WIT',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ]
                          ),
                        SizedBox(height: 20,),
                          Row(
                            children: [
                              Text('TAHUN AJARAN :',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 6,),
                              Text('2018 - KIAMAT',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ]
                          ),
                          SizedBox(height: 50,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  edit = true;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(16),
                                width: MediaQuery.of(context).size.width * 0.65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: edit ? Colors.blue[200] : Colors.deepOrangeAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 3),
                                      color: Colors.black.withOpacity(0.20),
                                      blurRadius: 8
                                    )
                                  ],
                                ),
                                child: Text(
                                  edit ? "SIMPAN" : "EDIT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white
                                  )
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}