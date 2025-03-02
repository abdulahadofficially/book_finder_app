import '../epub_model/epub_model.dart';
import '../pdf_model/pdf_model.dart';

class AccessInfo{
String? _country;
String? _viewability;
bool? _embeddable;
bool? _publicDomain;
String? _textToSpeechPermission;
Epub? _epub;
Pdf? _pdf;
String? _webReaderLink;
String? _accessViewStatus;
bool? _quoteSharingAllowed;

String? get country => _country;
String? get viewability => _viewability;
bool? get embeddable => _embeddable;
bool? get publicDomain => _publicDomain;
String? get textToSpeechPermission => _textToSpeechPermission;
Epub? get epub => _epub;
Pdf? get pdf => _pdf;
String? get webReaderLink => _webReaderLink;
String? get accessViewStatus => _accessViewStatus;
bool? get quoteSharingAllowed => _quoteSharingAllowed;

AccessInfo({
String? country,
String? viewability,
bool? embeddable,
bool? publicDomain,
String? textToSpeechPermission,
Epub? epub,
Pdf? pdf,
String? webReaderLink,
String? accessViewStatus,
bool? quoteSharingAllowed,
}){
_country = country;
_viewability = viewability;
_embeddable = embeddable;
_publicDomain = publicDomain;
_textToSpeechPermission = textToSpeechPermission;
_epub = epub;
_pdf = pdf;
_webReaderLink = webReaderLink;
_accessViewStatus = accessViewStatus;
_quoteSharingAllowed = quoteSharingAllowed;
}


AccessInfo.fromJson(dynamic json){
if(json is Map){
_country = json["country"] as String?;
_viewability = json["viewability"] as String?;
_embeddable = json["embeddable"] as bool?;
_publicDomain = json["publicDomain"] as bool?;
_textToSpeechPermission = json["textToSpeechPermission"] as String?;
_epub = json["epub"] != null? Epub.fromJson(json["epub"]):null;
_pdf = json["pdf"] != null? Pdf.fromJson(json["pdf"]):null;
_webReaderLink = json["webReaderLink"] as String?;
_accessViewStatus = json["accessViewStatus"] as String?;
_quoteSharingAllowed = json["quoteSharingAllowed"] as bool?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["country"] = _country;
map["viewability"] = _viewability;
map["embeddable"] = _embeddable;
map["publicDomain"] = _publicDomain;
map["textToSpeechPermission"] = _textToSpeechPermission;
map["epub"] = _epub?.toJson();
map["pdf"] = _pdf?.toJson();
map["webReaderLink"] = _webReaderLink;
map["accessViewStatus"] = _accessViewStatus;
map["quoteSharingAllowed"] = _quoteSharingAllowed;
return map;
}

}

