import '../book_model/book_model.dart';

class BookResponseModel{
String? _kind;
int? _totalItems;
List<BooksModel>? _items;

String? get kind => _kind;
int? get totalItems => _totalItems;
List<BooksModel>? get items => _items;

BookResponseModel({
String? kind,
int? totalItems,
List<BooksModel>? items,
}){
_kind = kind;
_totalItems = totalItems;
_items = items;
}


BookResponseModel.fromJson(dynamic json){
if(json is Map){
_kind = json["kind"] as String?;
_totalItems = json["totalItems"] as int?;
_items = (json["items"] as List?)?.map((dynamic e) => BooksModel.fromJson(e)).toList();
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["kind"] = _kind;
map["totalItems"] = _totalItems;
map["items"] = _items?.map((e) => e.toJson()).toList();
return map;
}

}






