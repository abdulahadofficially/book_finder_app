class Pdf{
bool? _isAvailable;

bool? get isAvailable => _isAvailable;

Pdf({
bool? isAvailable,
}){
_isAvailable = isAvailable;
}


Pdf.fromJson(dynamic json){
if(json is Map){
_isAvailable = json["isAvailable"] as bool?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["isAvailable"] = _isAvailable;
return map;
}

}


