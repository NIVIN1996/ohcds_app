import 'dart:convert';

import 'order_model.dart';


RecentOrderModel recentOrderModelFromJson(String str) => RecentOrderModel.fromJson(json.decode(str));

class RecentOrderModel {
  RecentOrderModel({
    required this.recentOrder,
  });

  List<RecentOrder> recentOrder;

  factory RecentOrderModel.fromJson(Map<String, dynamic> json) => RecentOrderModel(

    recentOrder: json["recentOrder"] == null ? [] : List<RecentOrder>.from(json["recentOrder"].map((x) => RecentOrder.fromJson(x))),
  );
}



