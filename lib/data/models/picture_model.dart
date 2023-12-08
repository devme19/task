class PictureModel {
  List<String>? message;
  String? status;

  PictureModel({this.message, this.status});

  PictureModel.fromJson(Map<String, dynamic> json) {
    message = json['message'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
