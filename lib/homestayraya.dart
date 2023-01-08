class Homestayraya {
  String? homestayrayaId;
  String? userId;
  String? homestayrayaName;
  String? homestayrayaDesc;
  String? homestayrayaPrice;
  String? homestayrayaDelivery;
  String? homestayrayaQty;
  String? homestayrayaState;
  String? homestayrayaLocal;
  String? homestayrayaLat;
  String? homestayrayaDate;

  Homestayraya(
      {this.homestayrayaId,
      this.userId,
      this.homestayrayaName,
      this.homestayrayaDesc,
      this.homestayrayaPrice,
      this.homestayrayaDelivery,
      this.homestayrayaQty,
      this.homestayrayaState,
      this.homestayrayaLocal,
      this.homestayrayaLat,
      this.homestayrayaDate});

  Homestayraya.fromJson(Map<String, dynamic> json) {
    homestayrayaId = json['homestayraya_id'];
    userId                = json['user_id'];
    homestayrayaName      = json['homestayraya_name'];
    homestayrayaDesc      = json['homestayraya_desc'];
    homestayrayaPrice     = json['homestayraya_price'];
    homestayrayaDelivery  = json['homestayraya_delivery'];
    homestayrayaQty       = json['homestayraya_qty'];
    homestayrayaState     = json['homestayraya_state'];
    homestayrayaLocal     = json['homestayraya_local'];
    homestayrayaLat       = json['homestayraya_lat'];
    homestayrayaDate      = json['homestayraya_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['homestayraya_id']       = homestayrayaId;
    data['user_id']               = userId;
    data['homestayraya_name']     = homestayrayaName;
    data['homestayraya_desc']     = homestayrayaDesc;
    data['homestayraya_price']    = homestayrayaPrice;
    data['homestayraya_delivery'] = homestayrayaDelivery;
    data['homestayraya_qty']      = homestayrayaQty;
    data['homestayraya_state']    = homestayrayaState;
    data['homestayraya_local']    = homestayrayaLocal;
    data['homestayraya_lat']      = homestayrayaLat;
    data['homestayraya_date']     = homestayrayaDate;
    return data;
  }
}