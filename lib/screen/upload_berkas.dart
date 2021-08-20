import 'package:app_crud/screen/Profile.dart';
import 'package:flutter/material.dart';

class UpluadData extends StatefulWidget {
  const UpluadData({ Key key }) : super(key: key);

  @override
  _UpluadDataState createState() => _UpluadDataState();
}

class _UpluadDataState extends State<UpluadData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Unggah Dokumen Pelengkap',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Colors.black
                )
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  color: Colors.white30,
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(2.0),
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Column(
                        children: [
                          Image.asset('assets/images/Placeholder.jpg',
                            height: 140,
                          ),
                          Text('Unggah Pas Foto')
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/Placeholder.jpg',
                            height: 140,
                          ),
                          Text('Unggah Ijazah')
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/Placeholder.jpg',
                            height: 140,
                          ),
                          Text('Unggah Kartu Keluarga')
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/Placeholder.jpg',
                            height: 140,
                          ),
                          Text('Unggah Akta Kelahiran')
                        ],
                      ),
                    ]
                ),
              ),
              ),
              SizedBox(height: 150,),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilPage()),
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
            ]
          ),
        ),
      ),
    );
  }
}