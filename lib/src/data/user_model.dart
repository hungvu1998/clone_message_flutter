class UserModel {
  String id;
  String imageAvatarUrl;
  String name;
  List<String> listFriendID;
  bool isActive;

  UserModel({this.id, this.imageAvatarUrl, this.name,this.listFriendID,this.isActive});

  UserModel.fromMap(Map snapshot,String id) :
        id = id ?? '',
        imageAvatarUrl = snapshot['imageAvatarUrl'] ?? '',
        name = snapshot['name'] ?? '',
        isActive = snapshot['isActive'] ?? '',
        listFriendID = snapshot['listFriendID'] ?? '';

  toJson() {
    return {
      "id" :id,
      "imageAvatarUrl": imageAvatarUrl,
      "name": name,
      "listFriendID": listFriendID,
      "isActive": isActive,
    };
  }
}