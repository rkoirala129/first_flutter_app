import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image3 =
        "https://isvr.acceleragent.com/usr/13440499593/CustomPages/images/bigstock-Beautiful-exterior-of-newly-bu-2996625883.jpg";
    final image4 =
        "https://charlotte.axios.com/wp-content/uploads/2021/09/509-Poindexter-axios-charlotte-hot-homes.jpg.webp";
    return Scaffold(
        appBar: AppBar(
          title: Text("ImageWidget Demo"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network(
              "https://t3.ftcdn.net/jpg/03/18/11/14/360_F_318111476_ijsCRAGJGBP5ilNwMDKpMtIBcoHzrHEP.jpg",
              width: 400,
              height: 300,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : Container(
                          width: 200,
                          height: 200,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(image3),
              radius: 120,
            ),
            CircleAvatar(
              radius: 140,
              child: ClipOval(
                child: Image.network(
                  image3,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              "assets/universe.jpg",
              width: 240,
              height: 240,
              fit: BoxFit.cover,
            ),
            CircleAvatar(
              radius: 150,
              child: ClipOval(
                child: Image.asset(
                  "assets/istockphoto-1286833440-612x612.jpg",
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/istockphoto-1286833440-612x612.jpg",
              ),
              radius: 120,
            ),
          ],
        ));
  }
}
