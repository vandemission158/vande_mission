import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:vande_mission/screen/beforelogin/view/login_screen.dart';

const nextPageURL = '';

const String baseUrl = "https://sand.vandemission.com/api/v1/";

// const String afterBeforeLogin = authKey ? "afterlogin/" : "beforelogin";
const String afterLoginCountryAPI = "afterlogin/country";
const String beforeLoginCountryAPI = "beforelogin/country";
const String afterLoginStateAPI = "afterlogin/state";
const String befooreLoginStateAPI = "beforelogin/state";
const String afterLoginDistrictAPI = "afterlogin/district";
const String beforeLoginDistrictAPI = "beforelogin/district";

const String afterLoginVillageAPI = "afterlogin/village";
const String befooreLoginVillageAPI = "beforelogin/village";
const String afterLoginSocietyAPI = "afterlogin/society";
const String befooreLoginSocietyAPI = "beforelogin/society";
const String addSocietyAPI = "beforelogin/society/store";
const String casteAPI = "beforelogin/caste";
const String addFamilyAPI = "beforelogin/family/store";
const String addFamilyMemberAPIKey = "beforelogin/member/store";
const String familyMemberAPI = "beforelogin/familymember";
const String addressListAPI = "beforelogin/address";
const String loginAPIKey = "beforelogin/login";
const String addGroupKey = "afterlogin/group/store";
const String logoutKey = "afterlogin/logout";
//Maulik Code
const String pathAuthAPI = "afterlogin/user";
const String pathSettingAPI = "afterlogin/settings";
const String pathCountryAPI = "afterlogin/country";
const String pathStateAPI = "afterlogin/state";
const String pathDistrictAPI = "afterlogin/district";
const String pathSubDistrictAPI = "afterlogin/subdistrict";
const String pathVillageAPI = "afterlogin/village";
const String pathSocietyAPI = "afterlogin/society";
const String pathPanchayatAPI = "afterlogin/panchayat";
const String pathReligionAPI = "afterlogin/religion";
const String pathFamilyAPI = "afterlogin/family";
const String pathUserUpdateAPI = "afterlogin/user/update";
const String pathRelationAPI = "afterlogin/relation";
const String pathFamilyMemberAPI = "afterlogin/familymember";
const String pathFamilyRelationAPI = "afterlogin/familyrelation";
const String pathFamilyRelationStoreAPI = "afterlogin/familyrelation/store";
const String pathMentionAPI = "afterlogin/user/mention";
const String pathHashtagsAPI = "afterlogin/hashtags";
const String pathSkillAPI = "afterlogin/skillinfo";
const String pathTypeOfCategoryAPI = "afterlogin/typeofcategory";
const String pathDepartmentAPI = "afterlogin/department";
const String pathMinisterAPI = "afterlogin/minister";
const String pathSkillStoreAPI = "afterlogin/skillinfo/store";
const String pathBusinessAPI = "afterlogin/business";
const String pathBusinessStoreAPI = "afterlogin/business/store";
const String pathBusinessUpdateAPI = "afterlogin/business/update";
const String pathBusinessLogoAPI = "afterlogin/business/logo";
const String pathBusinessDeleteAPI = "afterlogin/business/delete";
const String pathBusinessPartnerAPI = "afterlogin/businesspartner";
const String pathBusinessPartnerStoreAPI = "afterlogin/businesspartner/store";
const String pathBusinessPartnerDeleteAPI = "afterlogin/businesspartner/delete";
const String pathBusinessInquiryAPI = "afterlogin/businessinquiry";
const String pathBusinessInquiryStoreAPI = "afterlogin/businessinquiry/store";
const String pathBusinessInquiryDeleteAPI = "afterlogin/businessinquiry`/delete";
const String pathAdsAPI = "afterlogin/ads";
const String pathAdsStoreAPI = "afterlogin/ads/store";
const String pathAdsUpdateAPI = "afterlogin/ads/update";
const String pathAdsDeleteAPI = "afterlogin/ads/delete";
const String pathBlogAPI = "afterlogin/blog";
const String pathBlogStoreAPI = "afterlogin/blog/store";
const String pathBlogUpdateAPI = "afterlogin/blog/update";
const String pathBlogDeleteAPI = "afterlogin/blog/delete";
const String pathBlogLikeDislikeAPI = "afterlogin/blog/like";
const String pathBlogCommentAPI = "afterlogin/blogcomment";
const String pathBlogCommentStoreAPI = "afterlogin/blogcomment/store";
const String pathBlogCommentDeleteAPI = "afterlogin/blogcomment/delete";
const String pathBlogCommentLikeAPI = "afterlogin/blogcomment/like";
const String pathBlogCommentReplyAPI = "afterlogin/blogcommentreply";
const String pathBlogCommentReplyStoreAPI = "afterlogin/blogcommentreply/store";
const String pathBlogCommentReplyDeleteAPI = "afterlogin/blogcommentreply/delete";
const String pathBlogCommentReplyLikeAPI = "afterlogin/blogcommentreply/like";
const String pathGroupAPI = "afterlogin/group";
const String pathGroupStoreAPI = "afterlogin/group/store";
const String pathGroupUpdateAPI = "afterlogin/group/update";
const String pathGroupDeleteAPI = "afterlogin/group/delete";
const String pathGroupMemberAPI = "afterlogin/groupmember";
const String pathGroupMemberStoreAPI = "afterlogin/groupmember/store";
const String pathGroupMemberUpdateAPI = "afterlogin/groupmember/update";
const String pathGroupMemberDeleteAPI = "afterlogin/groupmember/delete";
const String pathGroupMemberRequestAPI = "afterlogin/groupmember/requestupdate";
const String pathEventAPI = "afterlogin/event";
const String pathEventStoreAPI = "afterlogin/event/store";
const String pathEventUpdateAPI = "afterlogin/event/update";
const String pathEventDeleteAPI = "afterlogin/event/delete";
const String pathEventOrganiserAPI = "afterlogin/eventorganiser";
const String pathEventOrganiserStoreAPI = "afterlogin/eventorganiser/store";
const String pathEventOrganiserDeleteAPI = "afterlogin/eventorganiser/delete";
const String pathEventInvitationAPI = "afterlogin/eventinvitation";
const String pathEventInvitationStoreAPI = "afterlogin/eventinvitation/store";
const String pathEventInvitationDeleteAPI = "afterlogin/eventinvitation/delete";
const String pathEventInterestAPI = "afterlogin/eventinterest";
const String pathEventInterestStoreAPI = "afterlogin/eventinterest/store";
const String pathEventInterestDeleteAPI = "afterlogin/eventinterest/delete";
const String pathJobAPI = "afterlogin/job";
const String pathJobStoreAPI = "afterlogin/job/store";
const String pathJobUpdateAPI = "afterlogin/job/update";
const String pathJobDeleteAPI = "afterlogin/job/delete";
const String pathJobInterestAPI = "afterlogin/jobinterest";
const String pathJobInterestStoreAPI = "afterlogin/jobinterest/store";
const String pathJobInterestDeleteAPI = "afterlogin/jobinterest/delete";
const String pathProductAPI = "afterlogin/product";
const String pathProductStoreAPI = "afterlogin/product/store";
const String pathProductUpdateAPI = "afterlogin/product/update";
const String pathProductDeleteAPI = "afterlogin/product/delete";
const String pathProductInterestAPI = "afterlogin/productinterest";
const String pathProductInterestStoreAPI = "afterlogin/productinterest/store";
const String pathProductInterestDeleteAPI = "afterlogin/productinterest/delete";
const String pathOfferAPI = "afterlogin/offer";
const String pathOfferStoreAPI = "afterlogin/offer/store";
const String pathOfferUpdateAPI = "afterlogin/offer/update";
const String pathOfferDeleteAPI = "afterlogin/offer/delete";
const String pathBookAPI = "afterlogin/book";
const String pathBookStoreAPI = "afterlogin/book/store";
const String pathBookUpdateAPI = "afterlogin/book/update";
const String pathBookDeleteAPI = "afterlogin/book/delete";
const String pathAuthorAPI = "afterlogin/author";
const String pathAuthorStoreAPI = "afterlogin/author/store";
const String pathAuthorUpdateAPI = "afterlogin/author/update";
const String pathAuthorDeleteAPI = "afterlogin/author/delete";
const String pathBookChapterAPI = "afterlogin/bookchapter";
const String pathBookChapterStoreAPI = "afterlogin/bookchapter/store";
const String pathBookChapterUpdateAPI = "afterlogin/bookchapter/update";
const String pathBookChapterDeleteAPI = "afterlogin/bookchapter/delete";
const String pathPostAPI = "afterlogin/post";
const String pathPostStoreAPI = "afterlogin/post/store";
const String pathPostUpdateAPI = "afterlogin/post/update";
const String pathPostDeleteAPI = "afterlogin/post/delete";
const String pathPostLikeDislikeAPI = "afterlogin/post/like";
const String pathPostCommentAPI = "afterlogin/postcomment";
const String pathPostCommentStoreAPI = "afterlogin/postcomment/store";
const String pathPostCommentDeleteAPI = "afterlogin/postcomment/delete";
const String pathPostCommentLikeAPI = "afterlogin/postcomment/like";
const String pathPostCommentReplyAPI = "afterlogin/postcommentreply";
const String pathPostCommentReplyStoreAPI = "afterlogin/postcommentreply/store";
const String pathPostCommentReplyDeleteAPI = "afterlogin/postcommentreply/delete";
const String pathPostCommentReplyLikeAPI = "afterlogin/postcommentreply/like";
const String pathTextAPI = "afterlogin/text";
const String pathTextStoreAPI = "afterlogin/text/store";
const String pathTextUpdateAPI = "afterlogin/text/update";
const String pathTextDeleteAPI = "afterlogin/text/delete";
const String pathPhotoAPI = "afterlogin/photo";
const String pathPhotoStoreAPI = "afterlogin/photo/store";
const String pathPhotoUpdateAPI = "afterlogin/photo/update";
const String pathPhotoDeleteAPI = "afterlogin/photo/delete";
const String pathVideoAPI = "afterlogin/video";
const String pathVideoStoreAPI = "afterlogin/video/store";
const String pathVideoUpdateAPI = "afterlogin/video/update";
const String pathVideoDeleteAPI = "afterlogin/video/delete";
const String pathMusicAPI = "afterlogin/music";
const String pathMusicStoreAPI = "afterlogin/music/store";
const String pathMusicUpdateAPI = "afterlogin/music/update";
const String pathMusicDeleteAPI = "afterlogin/music/delete";
const String pathDocumentAPI = "afterlogin/document";
const String pathDocumentStoreAPI = "afterlogin/document/store";
const String pathDocumentUpdateAPI = "afterlogin/document/update";
const String pathDocumentDeleteAPI = "afterlogin/document/delete";
const String pathBroadcastAPI = "afterlogin/broadcast";
const String pathBroadcastStoreAPI = "afterlogin/broadcast/store";
const String pathBroadcastUpdateAPI = "afterlogin/broadcast/update";
const String pathBroadcastDeleteAPI = "afterlogin/broadcast/delete";
const String pathBankDetailAPI = "afterlogin/bankDetail";
const String pathBankDetailStoreAPI = "afterlogin/bankDetail/store";
const String pathBankDetailUpdateAPI = "afterlogin/bankDetail/update";
const String pathBankDetailDeleteAPI = "afterlogin/bankDetail/delete";

const int timout = 30000;
// const int countryID = 0;

//API token
String authorizationToken = "";
String authorizationKey = "590449c6329bb5153e331ce35e8ec474fb3934590386c7fca45a2669b8ee3b94";
String id = "";

//Hive DB
const String dbName = "vandemission";
const String authToken = "token";
const String authKey = "key";
const String userId = 'id';
const String isLoginHive = "is_login";

class Constants {
  static height(context) => MediaQuery.of(context).size.height;
  static width(context) => MediaQuery.of(context).size.width;

  static Future setHive(String key, dynamic value) async {
    var box = await Hive.openBox(dbName);
    await box.put(key, value);
  }

  static Future getHive(String key) async {
    var box = await Hive.openBox(dbName);
    var hive = await box.get(key);
    return hive;
  }

  static void logout() async {
    //cleared hive db
    Hive.box(dbName).clear();
    Get.deleteAll(force: true);
    Get.offAll(() => const LoginScreen());
    print("data clear:---" + await getHive(authKey));
  }
}
