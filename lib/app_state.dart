import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _islogin = prefs.getBool('ff_islogin') ?? _islogin;
    });
    _safeInit(() {
      _isIntro = prefs.getBool('ff_isIntro') ?? _isIntro;
    });
    _safeInit(() {
      _introIndex = prefs.getInt('ff_introIndex') ?? _introIndex;
    });
    _safeInit(() {
      _bottomIndex = prefs.getInt('ff_bottomIndex') ?? _bottomIndex;
    });
    _safeInit(() {
      _phone = prefs.getString('ff_phone') ?? _phone;
    });
    _safeInit(() {
      _countryCode = prefs.getString('ff_countryCode') ?? _countryCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _islogin = false;
  bool get islogin => _islogin;
  set islogin(bool value) {
    _islogin = value;
    prefs.setBool('ff_islogin', value);
  }

  bool _isIntro = false;
  bool get isIntro => _isIntro;
  set isIntro(bool value) {
    _isIntro = value;
    prefs.setBool('ff_isIntro', value);
  }

  int _introIndex = 0;
  int get introIndex => _introIndex;
  set introIndex(int value) {
    _introIndex = value;
    prefs.setInt('ff_introIndex', value);
  }

  List<CateModelStruct> _deatils = [
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/ghtnlwpxl2bi/Around1.png\",\"cate_name\":\"The Crib Childcare\",\"distance\":\"Distance (5km)\",\"price\":\"\$150.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/etmh0yo4rodn/Around2.png\",\"cate_name\":\"Merry Minis Childcare\",\"distance\":\"Distance (2km)\",\"price\":\"\$100.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/ebp49c3habpe/Arund3.png\",\"cate_name\":\"The Tot Lot\",\"distance\":\"Distance (2km)\",\"price\":\"\$100.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/32m1udhk00r4/Aruond4.png\",\"cate_name\":\"Babies and Tots Childcare\",\"distance\":\"Distance (5km)\",\"price\":\"\$150.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/2ycl2wc7l83p/Aruond5.png\",\"cate_name\":\"Small Sports Daycare\",\"distance\":\"Distance (7km)\",\"price\":\"\$150.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/v8urqfhf0u9q/Aruond6.png\",\"cate_name\":\"Newbies and Tots Child\",\"distance\":\"Distance (3km)\",\"price\":\"\$100.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/3c1pp77xtp5q/Aruond7.png\",\"cate_name\":\"Flower Children care\",\"distance\":\"Distance (5km)\",\"price\":\"\$150.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/ebd75pmgzxmj/Aruond8.png\",\"cate_name\":\"Blooming kids\",\"distance\":\"Distance (2km)\",\"price\":\"\$100.00\",\"cate_type\":\"Around You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/dkur4yvdxkmb/pyou-1.png\",\"cate_name\":\"Jumpin’ Joeys Childcare\",\"distance\":\"Distance (6km)\",\"price\":\"\$100.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/fz0n5kyjgbsi/pyou2.png\",\"cate_name\":\"The Kiddie Cave Childcare\",\"distance\":\"Distance (10km)\",\"price\":\"\$150.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/fwdgo97sttft/pyou3.png\",\"cate_name\":\"Lucky Ducklings Childcare\",\"distance\":\"Distance (6km)\",\"price\":\"\$100.00/hr\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/3ykgfmyo5xqb/pyou4.png\",\"cate_name\":\"Bumblebee Academy\",\"distance\":\"Distance (8km)\",\"price\":\"\$150.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/l914tb7aoc8u/pyou5.png\",\"cate_name\":\"Kids Being Kids Childcare\",\"distance\":\"Distance (4km)\",\"price\":\"\$100.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/jim5nao1zxq6/pyou6.png\",\"cate_name\":\"The Crib Childcare\",\"distance\":\"Distance (9km)\",\"price\":\"\$150.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/6lm8y4gsmc5o/pyou7.png\",\"cate_name\":\"Kids Space\",\"distance\":\"Distance (5km)\",\"price\":\"\$100.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/q9xn55wug9q1/pyou8.png\",\"cate_name\":\"The Fun Zone Daycare\",\"distance\":\"Distance (2km)\",\"price\":\"\$100.00\",\"cate_type\":\"Popular For You\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/31bavzle4msg/ayou1.png\",\"cate_name\":\"Health And Other Effects on Children\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Guy Hawkins\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"17\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/n86cpewfaqf8/ayou2.png\",\"cate_name\":\"Care For Kids\' Guide To School Readiness\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Leslie Alexander\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/lz9aerkuiovg/ayou3.png\",\"cate_name\":\"Importance of school readiness skills\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Robert Fox\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/hklmuw7z5wjs/ayou4.png\",\"cate_name\":\"Time-Saving Hacks for Busy Parents of Under 5s\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Albert Flores\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"20\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/c9q0fcyrossa/ayou5.png\",\"cate_name\":\"Tips To Get Your Child Into Your Preferred Childcare\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Bessie Cooper\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"21\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/0u7hvd1x40gc/ayou6.png\",\"cate_name\":\"Why School Readiness Is Important For Your Kids\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Arlene McCoy\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/4xzzdl1up5ze/ayou7.png\",\"cate_name\":\"Fewer toys leads to higher quality play\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Guy Hawkins\",\"is_fav\":\"false\"}')),
    CateModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/a01zg4nsziby/ayou8.png\",\"cate_name\":\"An Expert\'s Guide to Keeping Our Kids Active\",\"distance\":\"\",\"price\":\"\",\"cate_type\":\"Article For You\",\"article_name\":\"Leslie Alexander\",\"is_fav\":\"false\"}'))
  ];
  List<CateModelStruct> get deatils => _deatils;
  set deatils(List<CateModelStruct> value) {
    _deatils = value;
  }

  void addToDeatils(CateModelStruct value) {
    deatils.add(value);
  }

  void removeFromDeatils(CateModelStruct value) {
    deatils.remove(value);
  }

  void removeAtIndexFromDeatils(int index) {
    deatils.removeAt(index);
  }

  void updateDeatilsAtIndex(
    int index,
    CateModelStruct Function(CateModelStruct) updateFn,
  ) {
    deatils[index] = updateFn(_deatils[index]);
  }

  void insertAtIndexInDeatils(int index, CateModelStruct value) {
    deatils.insert(index, value);
  }

  List<NotificationDataStruct> _notifyData2 = [
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Booking Successful!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"3 hr ago\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Update your apps for latest!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"2 hr ago\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Display Notifications!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"2 hr ago\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Account Setup Sucessfully!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"2 hr ago\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Credit Card Connected!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"2 hr ago\"}')),
    NotificationDataStruct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Display Notifications!\",\"detail\":\"You have successfully booked the Art Workshops. \",\"time\":\"2 hr ago\"}'))
  ];
  List<NotificationDataStruct> get notifyData2 => _notifyData2;
  set notifyData2(List<NotificationDataStruct> value) {
    _notifyData2 = value;
  }

  void addToNotifyData2(NotificationDataStruct value) {
    notifyData2.add(value);
  }

  void removeFromNotifyData2(NotificationDataStruct value) {
    notifyData2.remove(value);
  }

  void removeAtIndexFromNotifyData2(int index) {
    notifyData2.removeAt(index);
  }

  void updateNotifyData2AtIndex(
    int index,
    NotificationDataStruct Function(NotificationDataStruct) updateFn,
  ) {
    notifyData2[index] = updateFn(_notifyData2[index]);
  }

  void insertAtIndexInNotifyData2(int index, NotificationDataStruct value) {
    notifyData2.insert(index, value);
  }

  int _bottomIndex = 0;
  int get bottomIndex => _bottomIndex;
  set bottomIndex(int value) {
    _bottomIndex = value;
    prefs.setInt('ff_bottomIndex', value);
  }

  List<ProfileDataStruct> _profileList = [
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/79opjy8gy3nz/profile1.png\",\"name\":\"My profile\"}')),
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/dbpp99qzu8gq/profile2.png\",\"name\":\"Information\"}')),
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/ibnn5lcgvcru/profile3.png\",\"name\":\"Favorite\"}')),
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/xo4l8tj957rk/profile4.png\",\"name\":\"Notifications\"}')),
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/fs3bhc4wscv7/profile5.png\",\"name\":\"Security\"}')),
    ProfileDataStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/4mdjlcioa1y6/profile6.png\",\"name\":\"Logout\"}'))
  ];
  List<ProfileDataStruct> get profileList => _profileList;
  set profileList(List<ProfileDataStruct> value) {
    _profileList = value;
  }

  void addToProfileList(ProfileDataStruct value) {
    profileList.add(value);
  }

  void removeFromProfileList(ProfileDataStruct value) {
    profileList.remove(value);
  }

  void removeAtIndexFromProfileList(int index) {
    profileList.removeAt(index);
  }

  void updateProfileListAtIndex(
    int index,
    ProfileDataStruct Function(ProfileDataStruct) updateFn,
  ) {
    profileList[index] = updateFn(_profileList[index]);
  }

  void insertAtIndexInProfileList(int index, ProfileDataStruct value) {
    profileList.insert(index, value);
  }

  List<String> _searchList = [];
  List<String> get searchList => _searchList;
  set searchList(List<String> value) {
    _searchList = value;
  }

  void addToSearchList(String value) {
    searchList.add(value);
  }

  void removeFromSearchList(String value) {
    searchList.remove(value);
  }

  void removeAtIndexFromSearchList(int index) {
    searchList.removeAt(index);
  }

  void updateSearchListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList[index] = updateFn(_searchList[index]);
  }

  void insertAtIndexInSearchList(int index, String value) {
    searchList.insert(index, value);
  }

  String _phone = '(405) 555-0128';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    prefs.setString('ff_phone', value);
  }

  String _countryCode = '';
  String get countryCode => _countryCode;
  set countryCode(String value) {
    _countryCode = value;
    prefs.setString('ff_countryCode', value);
  }

  List<OnbodyStruct> _OnBodyList = [
    OnbodyStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/4az1c7u74z4n/a2110874903_1.png\",\"title\":\"Tender Loving Care Day Care\",\"text\":\"Tender Loving Care Day Care\\\" is a warm and inviting name for a child day care.\"}')),
    OnbodyStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/2l7fvj03b9r2/abcd2.png\",\"title\":\"Growing Sprouts Day Care\",\"text\":\"Growing Sprouts Day Care is dedicated to the development of young minds.\"}')),
    OnbodyStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/bragripwnp0c/aaa-333.png\",\"title\":\"Bright Beginnings Child Care\",\"text\":\"We are excited to welcome new families to Bright Beginnings Child Care.\"}'))
  ];
  List<OnbodyStruct> get OnBodyList => _OnBodyList;
  set OnBodyList(List<OnbodyStruct> value) {
    _OnBodyList = value;
  }

  void addToOnBodyList(OnbodyStruct value) {
    OnBodyList.add(value);
  }

  void removeFromOnBodyList(OnbodyStruct value) {
    OnBodyList.remove(value);
  }

  void removeAtIndexFromOnBodyList(int index) {
    OnBodyList.removeAt(index);
  }

  void updateOnBodyListAtIndex(
    int index,
    OnbodyStruct Function(OnbodyStruct) updateFn,
  ) {
    OnBodyList[index] = updateFn(_OnBodyList[index]);
  }

  void insertAtIndexInOnBodyList(int index, OnbodyStruct value) {
    OnBodyList.insert(index, value);
  }

  List<ChatModelStruct> _chatList = [
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/727gs07ev5r0/chat1.png\",\"title\":\"Jenny Wilson\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/md6myxnsg2c4/chat2.png\",\"title\":\"Robert Fox\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/1cudzah7hyc3/chat3.png\",\"title\":\"Guy Hawkins\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/md6myxnsg2c4/chat2.png\",\"title\":\"Albert Flores\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/a9mnlo6fa1xr/chat4.png\",\"title\":\"Ralph Edwards\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/a9mnlo6fa1xr/chat4.png\",\"title\":\"Theresa Webb\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}')),
    ChatModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/daycare-app-kq0k2h/assets/a9mnlo6fa1xr/chat4.png\",\"title\":\"Kathryn Murphy\",\"text\":\"Hello, good morning\",\"time\":\"22:00\"}'))
  ];
  List<ChatModelStruct> get chatList => _chatList;
  set chatList(List<ChatModelStruct> value) {
    _chatList = value;
  }

  void addToChatList(ChatModelStruct value) {
    chatList.add(value);
  }

  void removeFromChatList(ChatModelStruct value) {
    chatList.remove(value);
  }

  void removeAtIndexFromChatList(int index) {
    chatList.removeAt(index);
  }

  void updateChatListAtIndex(
    int index,
    ChatModelStruct Function(ChatModelStruct) updateFn,
  ) {
    chatList[index] = updateFn(_chatList[index]);
  }

  void insertAtIndexInChatList(int index, ChatModelStruct value) {
    chatList.insert(index, value);
  }

  bool _connected = true;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  List<NotificationsData2Struct> _notifyData = [
    NotificationsData2Struct.fromSerializableMap(jsonDecode(
        '{\"msg\":\"Hello World\",\"detail\":\"Hello World\",\"time\":\"Hello World\",\"uid\":\"Hello World\"}'))
  ];
  List<NotificationsData2Struct> get notifyData => _notifyData;
  set notifyData(List<NotificationsData2Struct> value) {
    _notifyData = value;
  }

  void addToNotifyData(NotificationsData2Struct value) {
    notifyData.add(value);
  }

  void removeFromNotifyData(NotificationsData2Struct value) {
    notifyData.remove(value);
  }

  void removeAtIndexFromNotifyData(int index) {
    notifyData.removeAt(index);
  }

  void updateNotifyDataAtIndex(
    int index,
    NotificationsData2Struct Function(NotificationsData2Struct) updateFn,
  ) {
    notifyData[index] = updateFn(_notifyData[index]);
  }

  void insertAtIndexInNotifyData(int index, NotificationsData2Struct value) {
    notifyData.insert(index, value);
  }

  bool _showAvailTimeslots = false;
  bool get showAvailTimeslots => _showAvailTimeslots;
  set showAvailTimeslots(bool value) {
    _showAvailTimeslots = value;
  }

  bool _selectedChatuserIsAdmin = false;
  bool get selectedChatuserIsAdmin => _selectedChatuserIsAdmin;
  set selectedChatuserIsAdmin(bool value) {
    _selectedChatuserIsAdmin = value;
  }

  String _seletectChatAdminUserKey = '';
  String get seletectChatAdminUserKey => _seletectChatAdminUserKey;
  set seletectChatAdminUserKey(String value) {
    _seletectChatAdminUserKey = value;
  }

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;
  set selectedDate(DateTime? value) {
    _selectedDate = value;
  }

  List<String> _childAge = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13'
  ];
  List<String> get childAge => _childAge;
  set childAge(List<String> value) {
    _childAge = value;
  }

  void addToChildAge(String value) {
    childAge.add(value);
  }

  void removeFromChildAge(String value) {
    childAge.remove(value);
  }

  void removeAtIndexFromChildAge(int index) {
    childAge.removeAt(index);
  }

  void updateChildAgeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    childAge[index] = updateFn(_childAge[index]);
  }

  void insertAtIndexInChildAge(int index, String value) {
    childAge.insert(index, value);
  }

  List<String> _selectChildrenCheckbox = [];
  List<String> get selectChildrenCheckbox => _selectChildrenCheckbox;
  set selectChildrenCheckbox(List<String> value) {
    _selectChildrenCheckbox = value;
  }

  void addToSelectChildrenCheckbox(String value) {
    selectChildrenCheckbox.add(value);
  }

  void removeFromSelectChildrenCheckbox(String value) {
    selectChildrenCheckbox.remove(value);
  }

  void removeAtIndexFromSelectChildrenCheckbox(int index) {
    selectChildrenCheckbox.removeAt(index);
  }

  void updateSelectChildrenCheckboxAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectChildrenCheckbox[index] = updateFn(_selectChildrenCheckbox[index]);
  }

  void insertAtIndexInSelectChildrenCheckbox(int index, String value) {
    selectChildrenCheckbox.insert(index, value);
  }

  List<String> _childLikes = [
    'Coloring Books',
    'Watch Movies',
    'Play Video Games',
    'Arts and Crafts'
  ];
  List<String> get childLikes => _childLikes;
  set childLikes(List<String> value) {
    _childLikes = value;
  }

  void addToChildLikes(String value) {
    childLikes.add(value);
  }

  void removeFromChildLikes(String value) {
    childLikes.remove(value);
  }

  void removeAtIndexFromChildLikes(int index) {
    childLikes.removeAt(index);
  }

  void updateChildLikesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    childLikes[index] = updateFn(_childLikes[index]);
  }

  void insertAtIndexInChildLikes(int index, String value) {
    childLikes.insert(index, value);
  }

  BabySitterStruct _selectedBabysitter = BabySitterStruct();
  BabySitterStruct get selectedBabysitter => _selectedBabysitter;
  set selectedBabysitter(BabySitterStruct value) {
    _selectedBabysitter = value;
  }

  void updateSelectedBabysitterStruct(Function(BabySitterStruct) updateFn) {
    updateFn(_selectedBabysitter);
  }

  int _ratePerHour = 10;
  int get ratePerHour => _ratePerHour;
  set ratePerHour(int value) {
    _ratePerHour = value;
  }

  bool _isParentAddress = false;
  bool get isParentAddress => _isParentAddress;
  set isParentAddress(bool value) {
    _isParentAddress = value;
  }

  ParentAddressesStruct _parentAddress = ParentAddressesStruct();
  ParentAddressesStruct get parentAddress => _parentAddress;
  set parentAddress(ParentAddressesStruct value) {
    _parentAddress = value;
  }

  void updateParentAddressStruct(Function(ParentAddressesStruct) updateFn) {
    updateFn(_parentAddress);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
