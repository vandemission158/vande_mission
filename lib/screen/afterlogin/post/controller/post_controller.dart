import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/post_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class PostController extends GetxController {
  void postApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathPostAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostStoreAPI,
      "auth_key": authorizationKey,
    });
    List<String> image = ['img-1', 'img-1', 'img-3'];
    for (int i = 0; i < image.length; i++) {
      requestAll.addAll({"image[$i]": image[i]});
    }
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathPostDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postLikeDislikeApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostLikeDislikeAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostCommentAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": "suggetion",
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostCommentStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathPostCommentDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentLikeApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostCommentLikeAPI,
      "auth_key": authorizationKey,
      // "is_like": 1 //1-like,2-dislike
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentReplyApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostCommentReplyAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": "suggetion",
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentReplyApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentReplyStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathPostCommentReplyStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentReplyStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentReplyDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathPostCommentReplyDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentReplyDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void postCommentReplyLikeApiCall(int id) async {
    var requestAll = {
      "action": pathPostCommentReplyLikeAPI,
      "auth_key": authorizationKey,
      "post_comment_reply_id": id,
      // "is_like": 1 //1-like,2-dislike
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await PostApi(dioClient: dioClient).postCommentReplyLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
