import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderStatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'My Orders',
                style: TextStyle(fontSize: width < 400 ? 14 :14+width*0.01, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text('View All', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: OrderStatus(
                orderId: '#15698gh65',
                date: 'From December 22',
                price: '\$164.26',
                status: ['Paid', 'Shipping', 'Delivery', 'Confirm'],
                currentStatusIndex: 2, // Assuming 'Shipping' is the current status
              ),
            ),
          ),
          SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: OrderStatus(
                orderId: '#15698gh65',
                date: 'From December 22',
                price: '\$164.26',
                status: ['Paid', 'Shipping', 'Delivery', 'Confirm'],
                currentStatusIndex: 1, // Assuming 'Shipping' is the current status
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class OrderStatus extends StatefulWidget {
  final String orderId;
  final String date;
  final String price;
  final List<String> status;
  final int currentStatusIndex;

  OrderStatus({
    required this.orderId,
    required this.date,
    required this.price,
    required this.status,
    required this.currentStatusIndex,
  });

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ExpansionPanelList(
      elevation: 0,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          backgroundColor: Colors.grey.shade200,
          canTapOnHeader: true,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: _isExpanded ? Radius.zero : Radius.circular(8),
                    bottomRight: _isExpanded ? Radius.zero : Radius.circular(8),
                  ),
                ),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.orderId,
                            style: TextStyle(
                                fontSize: width < 400 ? 12 : 12 + width * 0.01,
                                fontWeight: FontWeight.bold)),
                        Text(widget.date,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize:
                                    width < 400 ? 10 : 10 + width * 0.01)),
                      ],
                    ),
                    Text(widget.price,
                        style: TextStyle(
                            fontSize: width < 400 ? 12 : 12 + width * 0.01,
                            fontWeight: FontWeight.bold)),
                    // Row(
                    //   children: [
                    //     Text(widget.price,
                    //         style: TextStyle(
                    //             fontSize: 16, fontWeight: FontWeight.bold)),
                    //     SizedBox(width: 8),
                    //     Icon(
                    //       _isExpanded ? Icons.expand_less : Icons.expand_more,
                    //       color: _isExpanded ? Colors.blue : Colors.grey,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            );
          },
          body: Container(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(widget.status.length, (index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width < 400 ? width*0.15 : width*0.155,

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_box_rounded,
                                  color: index <= widget.currentStatusIndex
                                      ? Theme.of(context).secondaryHeaderColor
                                      : Colors.grey,
                                  size: width < 400 ? 24 : 24 + width * 0.01,
                                ),
                                SizedBox(height: 4),
                                Text(
                                    widget.status[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: index <= widget.currentStatusIndex
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize:
                                          width < 400 ? 12 : 12 + width * 0.01,
                                    ),
                                  ),

                              ],
                            ),
                          ),
                          if (index < widget.status.length - 1)
                            Container(
                                margin: EdgeInsets.only(top: width < 400 ? 8 : 8 + width * 0.01),
                                width: width < 400 ? width * 0.06: width * 0.08,
                                height: 2,
                                color: index < widget.currentStatusIndex
                                    ? Theme.of(context).secondaryHeaderColor
                                    : Colors.grey,
                              ),

                        ],
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                  Text('Lorem Ipsum is simply dummy text.',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Cancel The Order',

                          style: TextStyle(color: Colors.red,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          isExpanded: _isExpanded,
        ),
      ],
    );
  }
}
