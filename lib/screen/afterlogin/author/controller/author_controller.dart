import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/author_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class AuthorController extends GetxController {
  void authorApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/author',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await AuthorApi(dioClient: dioClient).authorApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void authorStoreApiCall() async {
    var data = {
      "action": 'afterlogin/author/store',
      "auth_key": authorizationKey,
      "typeofcategory_id": 352,
      "title": "Ramayan",
      "edition": 1,
      "price_type": "Free", //Free,Paid
      "price": "",
      "website": "",
      "language": "English",
      "publishing_date": "2022-05-01",
      "author_pdf": "",
      // "result": "row_array",
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await AuthorApi(dioClient: dioClient).authorStoreApi(data);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void authorUpdateApiCall(int id) async {
    var data = {
      "action": 'afterlogin/author/update',
      "auth_key": authorizationKey,
      "book_id": 1,
      "is_member": 1,
      "member_id": 1, //Is_member == 1 => required
      "name": "Er. Maulik Patel111",
      // "result": "row_array",
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await AuthorApi(dioClient: dioClient).authorUpdateApi(data, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void authorDeleteApiCall(int id) async {
    var data = {
      "action": 'afterlogin/author/delete',
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await AuthorApi(dioClient: dioClient).authorDeleteApi(data, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
