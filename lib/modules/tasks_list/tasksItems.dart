import 'package:flutter/material.dart';

class TaskItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 30,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 4,
                color: Colors.blueAccent,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'add tasks here',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_outlined),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '10:30 am',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Colors.grey[500],
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.done,
                    size: 25,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
