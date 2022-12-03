import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/location_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class LocationController extends GetxController {
  void countryApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/country',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion'
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).countryApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void stateApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/state',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "country_id": 1,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).stateApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void districtApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/district',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "country_id": 1,
      "state_id": 10,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).districtApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void villageApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/village',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "country_id": 1,
      "state_id": 10,
      "district_id": 10,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).villageApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void societyApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/society',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "country_id": 1,
      "state_id": 10,
      "district_id": 10,
      "village_id": 523078,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).societyApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }

  void panchayatApiCall(Map data, nextpage, q) async {
    var data = {
      "action": 'afterlogin/district',
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion',
      "country_id": 1,
      "state_id": 10,
      "district_id": 10,
      "village_id": 523078,
    };
    DioClient dioClient = DioClient(data['action'].toString());
    try {
      var res = await LocationApi(dioClient: dioClient).societyApi(data, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      // print("Hello");
    }
  }
}
