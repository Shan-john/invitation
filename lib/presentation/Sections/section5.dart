
import 'package:flutter/material.dart';
import 'package:invitation/presentation/widgets/footer.dart';

class Section5 extends StatelessWidget {
  const Section5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            child: Image.network(
                "https://i.pinimg.com/564x/3a/35/14/3a35143c3e8c3fb2bdcab412e42f40e1.jpg"),
          ),
          Container(
            height: 2,
            color: const Color.fromARGB(
                255, 154, 209, 255), // or any color you prefer
            margin: EdgeInsets.only(top: 50),
          ),
          Footer(),
        ],
      ),
    );
  }
}
