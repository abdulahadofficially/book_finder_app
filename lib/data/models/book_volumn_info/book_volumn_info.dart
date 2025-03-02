class BookVolumeInfo{
String? _title;
String? _subtitle;
List<String>? _authors;
String? _publisher;
String? _publishedDate;
String? _description;
List<IndustryIdentifiers>? _industryIdentifiers;
ReadingModes? _readingModes;
int? _pageCount;
String? _printType;
List<String>? _categories;
String? _maturityRating;
bool? _allowAnonLogging;
String? _contentVersion;
PanelizationSummary? _panelizationSummary;
ImageLinks? _imageLinks;
String? _language;
String? _previewLink;
String? _infoLink;
String? _canonicalVolumeLink;

String? get title => _title;
String? get subtitle => _subtitle;
List<String>? get authors => _authors;
String? get publisher => _publisher;
String? get publishedDate => _publishedDate;
String? get description => _description;
List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
ReadingModes? get readingModes => _readingModes;
int? get pageCount => _pageCount;
String? get printType => _printType;
List<String>? get categories => _categories;
String? get maturityRating => _maturityRating;
bool? get allowAnonLogging => _allowAnonLogging;
String? get contentVersion => _contentVersion;
PanelizationSummary? get panelizationSummary => _panelizationSummary;
ImageLinks? get imageLinks => _imageLinks;
String? get language => _language;
String? get previewLink => _previewLink;
String? get infoLink => _infoLink;
String? get canonicalVolumeLink => _canonicalVolumeLink;

BookVolumeInfo({
String? title,
String? subtitle,
List<String>? authors,
String? publisher,
String? publishedDate,
String? description,
List<IndustryIdentifiers>? industryIdentifiers,
ReadingModes? readingModes,
int? pageCount,
String? printType,
List<String>? categories,
String? maturityRating,
bool? allowAnonLogging,
String? contentVersion,
PanelizationSummary? panelizationSummary,
ImageLinks? imageLinks,
String? language,
String? previewLink,
String? infoLink,
String? canonicalVolumeLink,
}){
_title = title;
_subtitle = subtitle;
_authors = authors;
_publisher = publisher;
_publishedDate = publishedDate;
_description = description;
_industryIdentifiers = industryIdentifiers;
_readingModes = readingModes;
_pageCount = pageCount;
_printType = printType;
_categories = categories;
_maturityRating = maturityRating;
_allowAnonLogging = allowAnonLogging;
_contentVersion = contentVersion;
_panelizationSummary = panelizationSummary;
_imageLinks = imageLinks;
_language = language;
_previewLink = previewLink;
_infoLink = infoLink;
_canonicalVolumeLink = canonicalVolumeLink;
}


BookVolumeInfo.fromJson(dynamic json){
if(json is Map){
_title = json["title"] as String?;
_subtitle = json["subtitle"] as String?;
_authors = (json["authors"] as List?)?.map((e) => e as String?).whereType<String>().toList();
_publisher = json["publisher"] as String?;
_publishedDate = json["publishedDate"] as String?;
_description = json["description"] as String?;
_industryIdentifiers = (json["industryIdentifiers"] as List?)?.map((dynamic e) => IndustryIdentifiers.fromJson(e)).toList();
_readingModes = json["readingModes"] != null? ReadingModes.fromJson(json["readingModes"]):null;
_pageCount = json["pageCount"] as int?;
_printType = json["printType"] as String?;
_categories = (json["categories"] as List?)?.map((e) => e as String?).whereType<String>().toList();
_maturityRating = json["maturityRating"] as String?;
_allowAnonLogging = json["allowAnonLogging"] as bool?;
_contentVersion = json["contentVersion"] as String?;
_panelizationSummary = json["panelizationSummary"] != null? PanelizationSummary.fromJson(json["panelizationSummary"]):null;
_imageLinks = json["imageLinks"] != null? ImageLinks.fromJson(json["imageLinks"]):null;
_language = json["language"] as String?;
_previewLink = json["previewLink"] as String?;
_infoLink = json["infoLink"] as String?;
_canonicalVolumeLink = json["canonicalVolumeLink"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["title"] = _title;
map["subtitle"] = _subtitle;
map["authors"] = _authors;
map["publisher"] = _publisher;
map["publishedDate"] = _publishedDate;
map["description"] = _description;
map["industryIdentifiers"] = _industryIdentifiers?.map((e) => e.toJson()).toList();
map["readingModes"] = _readingModes?.toJson();
map["pageCount"] = _pageCount;
map["printType"] = _printType;
map["categories"] = _categories;
map["maturityRating"] = _maturityRating;
map["allowAnonLogging"] = _allowAnonLogging;
map["contentVersion"] = _contentVersion;
map["panelizationSummary"] = _panelizationSummary?.toJson();
map["imageLinks"] = _imageLinks?.toJson();
map["language"] = _language;
map["previewLink"] = _previewLink;
map["infoLink"] = _infoLink;
map["canonicalVolumeLink"] = _canonicalVolumeLink;
return map;
}

}


class IndustryIdentifiers{
String? _type;
String? _identifier;

String? get type => _type;
String? get identifier => _identifier;

IndustryIdentifiers({
String? type,
String? identifier,
}){
_type = type;
_identifier = identifier;
}


IndustryIdentifiers.fromJson(dynamic json){
if(json is Map){
_type = json["type"] as String?;
_identifier = json["identifier"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["type"] = _type;
map["identifier"] = _identifier;
return map;
}

}


class ReadingModes{
bool? _text;
bool? _image;

bool? get text => _text;
bool? get image => _image;

ReadingModes({
bool? text,
bool? image,
}){
_text = text;
_image = image;
}


ReadingModes.fromJson(dynamic json){
if(json is Map){
_text = json["text"] as bool?;
_image = json["image"] as bool?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["text"] = _text;
map["image"] = _image;
return map;
}

}


class PanelizationSummary{
bool? _containsEpubBubbles;
bool? _containsImageBubbles;

bool? get containsEpubBubbles => _containsEpubBubbles;
bool? get containsImageBubbles => _containsImageBubbles;

PanelizationSummary({
bool? containsEpubBubbles,
bool? containsImageBubbles,
}){
_containsEpubBubbles = containsEpubBubbles;
_containsImageBubbles = containsImageBubbles;
}


PanelizationSummary.fromJson(dynamic json){
if(json is Map){
_containsEpubBubbles = json["containsEpubBubbles"] as bool?;
_containsImageBubbles = json["containsImageBubbles"] as bool?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["containsEpubBubbles"] = _containsEpubBubbles;
map["containsImageBubbles"] = _containsImageBubbles;
return map;
}

}


class ImageLinks{
String? _smallThumbnail;
String? _thumbnail;

String? get smallThumbnail => _smallThumbnail;
String? get thumbnail => _thumbnail;

ImageLinks({
String? smallThumbnail,
String? thumbnail,
}){
_smallThumbnail = smallThumbnail;
_thumbnail = thumbnail;
}


ImageLinks.fromJson(dynamic json){
if(json is Map){
_smallThumbnail = json["smallThumbnail"] as String?;
_thumbnail = json["thumbnail"] as String?;
}
}

Map<String,dynamic> toJson(){
final Map<String,dynamic> map = {};
map["smallThumbnail"] = _smallThumbnail;
map["thumbnail"] = _thumbnail;
return map;
}

}

