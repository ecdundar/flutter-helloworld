class UserLoginResponseModel {
  String? token;
  String? message;

  UserLoginResponseModel({this.token, this.message});

  UserLoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['message'] = this.message;
    return data;
  }
}
