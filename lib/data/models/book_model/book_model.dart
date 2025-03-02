import 'package:book_finder/data/models/book_volumn_info/book_volumn_info.dart';

import '../access_info_model/access_info_model.dart';
import '../sale_info/sale_info.dart';
import '../search_info_model/search_info_model.dart';

class BooksModel{
String? _kind;
String? _id;
String? _etag;
String? _selfLink;
BookVolumeInfo? _volumeInfo;
SaleInfo? _saleInfo;
AccessInfo? _accessInfo;
SearchInfo? _searchInfo;

String? get kind => _kind;
String? get id => _id;
String? get etag => _etag;
String? get selfLink => _selfLink;
BookVolumeInfo? get volumeInfo => _volumeInfo;
SaleInfo? get saleInfo => _saleInfo;
AccessInfo? get accessInfo => _accessInfo;
SearchInfo? get searchInfo => _searchInfo;

BooksModel({
String? kind,
String? id,
String? etag,
String? selfLink,
BookVolumeInfo? volumeInfo,
SaleInfo? saleInfo,
AccessInfo? accessInfo,
SearchInfo? searchInfo,
}){
_kind = kind;
_id = id;
_etag = etag;
_selfLink = selfLink;
_volumeInfo = volumeInfo;
_saleInfo = saleInfo;
_accessInfo = accessInfo;
_searchInfo = searchInfo;
}


BooksModel.fromJson(dynamic json){
if(json is Map){
_kind = json["kind"] as String?;
_id = json["id"] as String?;
_etag = json["etag"] as String?;
_selfLink = json["selfLink"] as String?;
_volumeInfo = json["volumeInfo"] != null? BookVolumeInfo.fromJson(json["volumeInfo"]):null;
_saleInfo = json["saleInfo"] != null? SaleInfo.fromJson(json["saleInfo"]):null;
_accessInfo = json["accessInfo"] != null? AccessInfo.fromJson(json["accessInfo"]):null;
_searchInfo = json["searchInfo"] != null? SearchInfo.fromJson(json["searchInfo"]):null;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["kind"] = _kind;
map["id"] = _id;
map["etag"] = _etag;
map["selfLink"] = _selfLink;
map["volumeInfo"] = _volumeInfo?.toJson();
map["saleInfo"] = _saleInfo?.toJson();
map["accessInfo"] = _accessInfo?.toJson();
map["searchInfo"] = _searchInfo?.toJson();
return map;
}

}

