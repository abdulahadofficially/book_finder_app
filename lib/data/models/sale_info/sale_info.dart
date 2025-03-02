class SaleInfo{
String? _country;
String? _saleability;
bool? _isEbook;

String? get country => _country;
String? get saleability => _saleability;
bool? get isEbook => _isEbook;

SaleInfo({
String? country,
String? saleability,
bool? isEbook,
}){
_country = country;
_saleability = saleability;
_isEbook = isEbook;
}


SaleInfo.fromJson(dynamic json){
if(json is Map){
_country = json["country"] as String?;
_saleability = json["saleability"] as String?;
_isEbook = json["isEbook"] as bool?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["country"] = _country;
map["saleability"] = _saleability;
map["isEbook"] = _isEbook;
return map;
}

}


