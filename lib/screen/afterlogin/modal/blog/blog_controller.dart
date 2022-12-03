import 'package:get/get.dart';
import 'package:vande_mission/helper/constant.dart';
import 'package:vande_mission/remote_services/api/blog_api.dart';
import 'package:vande_mission/remote_services/dio_client.dart';

class BlogController extends GetxController {
  void blogApiCall(Map<String, dynamic>? requestAll, String nextpage, String q) async {
    requestAll!.addAll({
      "action": pathBlogAPI,
      "auth_key": authorizationKey,
      'pagination': 1, //1 or 0
      "apicall": 'suggetion', //217
      //"typeofcategory_id": 6, //Only filter category
      //"member_id": '', //Only filter user
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogApi(requestAll, nextpage, q);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogStoreAPI,
      "auth_key": authorizationKey,
    });
    List<String> image = ['img-1', 'img-1', 'img-3'];
    for (int i = 0; i < image.length; i++) {
      requestAll.addAll({"image[$i]": image[i]});
    }
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogUpdateApiCall(Map<String, dynamic>? requestAll, int id) async {
    requestAll!.addAll({
      "action": pathBlogUpdateAPI,
      "auth_key": authorizationKey,
    });
    List<String> image = ['img-1', 'img-1', 'img-3'];
    for (int i = 0; i < image.length; i++) {
      requestAll.addAll({"image[$i]": image[i]});
    }
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogUpdateApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBlogDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogLikeDislikeApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogLikeDislikeAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogCommentAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": "suggetion",
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogCommentStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBlogCommentDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentLikeApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogCommentLikeAPI,
      "auth_key": authorizationKey,
      // "is_like": 1 //1-like,2-dislike
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentReplyApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogCommentReplyAPI,
      "auth_key": authorizationKey,
      "pagination": 1,
      "apicall": "suggetion",
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentReplyApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentReplyStoreApiCall(Map<String, dynamic>? requestAll) async {
    requestAll!.addAll({
      "action": pathBlogCommentReplyStoreAPI,
      "auth_key": authorizationKey,
    });
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentReplyStoreApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentReplyDeleteApiCall(int id) async {
    var requestAll = {
      "action": pathBlogCommentReplyDeleteAPI,
      "auth_key": authorizationKey,
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentReplyDeleteApi(requestAll, id);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }

  void blogCommentReplyLikeApiCall(int id) async {
    var requestAll = {
      "action": pathBlogCommentReplyLikeAPI,
      "auth_key": authorizationKey,
      "blog_comment_reply_id": id,
      // "is_like": 1 //1-like,2-dislike
    };
    DioClient dioClient = DioClient(requestAll['action'].toString());
    try {
      var res = await BlogApi(dioClient: dioClient).blogCommentReplyLikeApi(requestAll);
      if (res != null) {
        print(res);
      }
    } finally {
      print("Hello");
    }
  }
}
