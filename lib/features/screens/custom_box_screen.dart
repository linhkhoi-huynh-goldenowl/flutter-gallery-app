import 'package:flutter/material.dart';

class CustomBoxScreen extends StatelessWidget {
  const CustomBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Custom Box Shape"),
      ),
      body: Center(
        child: ClipPath(
          clipper: DolDurmaClipper(left: 110, holeRadius: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            width: 350,
            height: 120,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 13, bottom: 15, top: 15, right: 12),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      color: const Color(0xFFe4f4e0),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "10k",
                      style: TextStyle(fontSize: 20, color: Color(0xFF5e8265)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                  child: Container(
                    color: Colors.white,
                    child: const Dash(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "GIOITHIEU",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("Giảm giá 12k cho đơn hàng",
                          style: TextStyle(
                            fontSize: 13,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Kết thúc: 31/12/2021",
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Radio(
                    value: true,
                    groupValue: const [],
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.left, required this.holeRadius});

  final double left;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0 + left - holeRadius, 0.0)
      ..arcToPoint(
        Offset(0 + left, 0),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0 + left, size.height)
      ..arcToPoint(
        Offset(0 + left - holeRadius, size.height),
        clockwise: false,
        radius: const Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}

class Dash extends StatelessWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          children: List.generate(9, (_) {
            return const SizedBox(
              width: 2,
              height: 8,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
        );
      },
    );
  }
}
