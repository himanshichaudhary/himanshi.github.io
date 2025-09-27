import 'package:flutter/material.dart';

class MobileDemo extends StatefulWidget {
  const MobileDemo({Key? key}) : super(key: key);

  @override
  State<MobileDemo> createState() => _MobileDemoState();
}

class _MobileDemoState extends State<MobileDemo> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * 1.02,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 32, right: 32),
              child: Divider(
                color: Colors.blue,
                height: 2,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 50, left: 32),
                                child: InkWell(
                                  onTap: () {
                                    // addUserDialog.showAddUserDialog();
                                  },
                                  child: Container(
                                    height: height / 2.5,
                                    width: width / 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 30),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'images/ic_plus.png',
                                              height: 64.0,
                                              width: 64,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 20),
                                              child: Text(
                                                'Contact \ntoevoegen',
                                                style: TextStyle(
                                                  fontSize: 26.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Text(
                                                'Nodig je vrienden uit en \nbegin met communiceren',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight:
                                                  FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 50, left: 32),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      //accountSetting = true;
                                    });
                                    // Get.to(UserSetting(
                                    //     userName: 'userName', email: 'email'));
                                  },
                                  child: Container(
                                    height: height / 2.5,
                                    width: width / 5,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 30),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Image.asset(
                                              'images/ic_setting.png',
                                              height: 64.0,
                                              width: 64,
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20),
                                              child: Text(
                                                'Account \ninstellingen',
                                                style: TextStyle(
                                                  fontSize: 26.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight:
                                                  FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10),
                                              child: Text(
                                                'Beheer hier uw account',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white,
                                                  fontFamily: 'Ubuntu',
                                                  fontWeight:
                                                  FontWeight.w400,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blue,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 40),
                                  child: Text(
                                    'Gebruikers lijst',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              // isListEmpty
                              //     ? Column(
                              //   children: <Widget>[
                              //     Image.asset(
                              //       'images/ic_list_empty_image.png',
                              //       // height: 64.0,
                              //       // width: 64,
                              //     ),
                              //     const Text(
                              //       'Geen gebruik gevonden',
                              //       style: TextStyle(
                              //         fontSize: 19.0,
                              //         color: Colors.black,
                              //         fontFamily: 'Ubuntu',
                              //         fontWeight: FontWeight.w500,
                              //       ),
                              //     ),
                              //     Padding(
                              //       padding:
                              //       const EdgeInsets.only(
                              //           top: 25),
                              //       child: SizedBox(
                              //         height: 43,
                              //         width: 187,
                              //         child: ButtonWidget(
                              //             buttonName:
                              //             'Contact toevoegen',
                              //             onpressed: () {
                              //               addUserDialog
                              //                   .showAddUserDialog();
                              //             }),
                              //       ),
                              //     )
                              //   ],
                              // )
                              //     : Expanded(
                              //     flex: 1,
                              //     child: Padding(
                              //       padding:
                              //       const EdgeInsets.all(32),
                              //       child: ListView.builder(
                              //           itemCount: list.length,
                              //           itemBuilder:
                              //               (BuildContext ctx,
                              //               int index) {
                              //             return ContactListItem(
                              //                 list[index]);
                              //           }),
                              //     )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
