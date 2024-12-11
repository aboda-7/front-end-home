import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deletemessage extends StatelessWidget {
  final VoidCallback onRemoveDevice;
  final String message;

  const Deletemessage({
    Key? key,
    required this.onRemoveDevice,
    required this.message,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
          height: 200,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0, top: 10),
                child: Text(
                  "Are you sure you want to delete this item?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: InkWell(
                      onTap: () {
                        onRemoveDevice();
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop(); // Changed to Navigator.of(context).pop()
                      },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Center(
                          child: Text(
                            "No",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
