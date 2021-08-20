import 'package:app_crud/screen/upload_berkas.dart';
import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  const InputData({ Key key }) : super(key: key);

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  int _genderValue;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Pendaftaran Mahasiswa Baru',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                      color: Color(0xFFFADC88),
                    )
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/logo_unitomo.png"
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "NIK",
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
                        SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
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
                        SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Agama",
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
                        SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Asal Sekolah",
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
                        SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Alamat",
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
                        SizedBox(height: 6),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nomor Telepon",
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
                        Container(
                          padding: EdgeInsets.all(6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => _genderValue = 0),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: _genderValue == 0 ? Colors.grey : Colors.white,
                                        width: 1.5
                                      )
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.network("https://img2.pngdownload.id/20180405/acq/kisspng-male-avatar-user-profile-clip-art-profile-5ac69e04c061f0.400875961522966020788.jpg", height: 60),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width / 6,
                                          child: Text(
                                            "Pria",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: _genderValue == 0 ? Colors.grey : Colors.black54
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => setState(() => _genderValue = 1),
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: _genderValue == 1 ? Colors.grey : Colors.white,
                                        width: 1.5
                                      )
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTZq1kVvOZWPZtGTO2yianN0Lhy-iJRKe_XA&usqp=CAU", height: 20),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width / 6,
                                          child: Text(
                                            "Wanita",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: _genderValue == 1 ? Colors.grey : Colors.black54
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: ()=> Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UpluadData()),
                        ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blue[200],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 3),
                              color: Colors.black.withOpacity(0.20),
                              blurRadius: 8
                            )
                          ],
                        ),
                        child: Text(
                          "Lanjutkan",
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
        ),
      ),
    );
  }
}