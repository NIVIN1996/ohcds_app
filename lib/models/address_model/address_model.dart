class Address {
  final String userName;
  final String addressType;
  final String contact;
  final String address1;
  final String address2;
  final bool defaultAddress;

  Address({
    required this.userName,required this.addressType,required this.contact,required this.address1,required this.address2,required this.defaultAddress,

  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
      userName: json["userName"] ?? "",
      addressType: json["addressType"] ?? "",
      address2: json["address2"] ?? "",
      address1: json["address1"] ?? "",
      contact: json["contact"] ?? "",
      defaultAddress: json["defaultAddress"] ?? false);
}
