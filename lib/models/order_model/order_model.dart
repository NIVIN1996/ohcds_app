class RecentOrder {
  final String deliveryTime;
  final String description;
  final String url;
  final bool delivered;

  RecentOrder({
    required this.delivered,
    required this.description,
    required this.url,
    required this.deliveryTime,
  });

  factory RecentOrder.fromJson(Map<String, dynamic> json) => RecentOrder(
      description: json["description"] ?? "",
      url: json["url"] ?? "",
      deliveryTime: json["deliveryTime"] ?? "",
      delivered: json["delivered"] ?? false);
}
