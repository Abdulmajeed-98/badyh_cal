class EventsBadyh {
  String? day;
  String? month;
  String? title;
  String? subject;

  EventsBadyh({this.day, this.month, this.title, this.subject});

  EventsBadyh.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    title = json['title'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['month'] = this.month;
    data['title'] = this.title;
    data['subject'] = this.subject;
    return data;
  }
}
