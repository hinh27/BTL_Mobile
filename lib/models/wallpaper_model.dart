class WallpaperModel {
  String photographer;
  int photographerId;
  String photographerUrl;
  SrcModel src;

  WallpaperModel(
      {this.photographer, this.photographerId, this.photographerUrl, this.src});

  factory WallpaperModel.fromMap(Map<String, dynamic> jsonData) {
    return WallpaperModel(
        src: SrcModel.fromMap(jsonData["src"]),
        photographer: jsonData["photographer"],
        photographerId: jsonData["photographer_id"],
        photographerUrl: jsonData["photographer_url"]);
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;

  SrcModel({this.original, this.portrait, this.small});

  factory SrcModel.fromMap(Map<String, dynamic> jsonData) {
    return SrcModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]);
  }
}
