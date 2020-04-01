import 'package:flutter/material.dart';
import 'package:whatup/chat_model.dart';

class Chatscreen extends StatefulWidget {
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  List<Chatmodel> data;
  @override
  void initState() {
    super.initState();
    data = [
      Chatmodel(
        name: 'Rehman Afzal',
        message: 'hy i am using flutter',
        time: '1:03',
        ulr: 'https://picsum.photos/seed/picsum/200/200',
      ),
      Chatmodel(
        name: 'jami shah',
        message: 'hy i am using flutter',
        time: '1:04',
        ulr: 'https://picsum.photos/seed/picsum/200/200',
      ),
      Chatmodel(
        name: 'Ahmad ',
        message: 'hy i am using flutter',
        time: '1:04',
        ulr: 'https://picsum.photos/200/200?grayscale',
      ),
      Chatmodel(
        name: 'waqas',
        message: 'hy i am using flutter',
        time: '1:04',
        ulr: 'https://www.pexels.com/photo/portrait-of-young-woman-247878/',
      ),
      Chatmodel(
        name: 'ameen sandhu ',
        message: 'hy i am using flutter',
        time: '1:04',
        ulr: 'https://www.pexels.com/photo/portrait-of-young-woman-247878/',
      ),
      Chatmodel(
        name: 'A',
        message: 'hy i am using flutter',
        time: '1:04',
        ulr: 'assets/img.jpeg',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, j) => ListTile(
              leading: data[j].ulr.startsWith('assets')
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        data[j].ulr,
                        width: 60,
                        height: 60,
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        data[j].ulr,
                        loadingBuilder: (BuildContext context, Widget child,
                            ImageChunkEvent loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes
                                  : null,
                            ),
                          );
                        },
                      ),
                      // child: Image.network(
                      //   data[j].ulr,
                      //   width: 60,
                      //   height: 60,
                      //   loadingBuilder: (context, aaa, event) {
                      //     if (event == null) {
                      //       return aaa;
                      //     }
                      //     return Center(
                      //       child: CircularProgressIndicator(
                      //         value: event.expectedTotalBytes != null
                      //             ? event.cumulativeBytesLoaded /
                      //                 event.expectedTotalBytes
                      //             : null,
                      //       ),
                      //     );
                      //   },
                      // ),
                    ),
              title: Text(data[j].name),
              subtitle: Text(data[j].message),
              trailing: Text(data[j].time),
            )
        // Column(
        //   children: <Widget>[
        //     Divider(
        //       height: 6,
        //     ),
        //     ListTile(
        //       leading: CircleAvatar(
        //         backgroundImage: data[j].ulr.startsWith('assets')
        //             ? AssetImage(data[j].ulr)
        //             : NetworkImage(data[j].ulr),
        //       ),
        //       title: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: <Widget>[
        //           Text(
        //             data[j].name,
        //             style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
        //           ),
        //         ],
        //       ),
        //       subtitle: Container(
        //         padding: const EdgeInsets.only(top: 3),
        //         child: Text(
        //           data[j].message,
        //           style: TextStyle(color: Colors.grey, fontSize: 15),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
