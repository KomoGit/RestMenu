import 'package:pocketbase/pocketbase.dart';

/*
READ ME:
Please know that img that is represented in PocketBase (Backend) is not important.
It is only there to represent image the users will add. If you are making a view of any sorts,
you must use imageURL instead of img to showcase the item.
*/
/* 
  LIST OF ALL DATA AND WHICH ONES WE USE
  "active": -- Only used in backend to determine whether item should be shown in app.           
  "collectionId": -- Possible to use it in controller. But not necessary.       
  "collectionName": -- Used in controller to get the data.       
  "created":--No use as of now, autogenerated by PocketBase.
  "id": -- No use as of now, autogenerated by PocketBase.
  "img" -- Img itself is not used. But in backend we are required to use it to upload files.           
  "imgUrl": -- When img is uploaded we can get the link from it and assign it here.
  "title": -- Used in views.
  "updated": -- No use as of now, autogenerated by PocketBase.
 */

class Category {
  //bool active;
  String title;
  //String img;
  String imgUrl;

  Category(/*this.active,*/ this.title, /*this.img,*/ this.imgUrl);

  static Category fromModel(RecordModel model) {
    //bool active = model.getBoolValue('active');
    String title = model.getStringValue('title');
    String imgUrl = model.getStringValue('imgUrl');
    //String img = model.getStringValue('img');
    return Category(
        /*active, img,*/
        title,
        imgUrl);
  }
}
