
// ignore_for_file: empty_constructor_bodies

class Cat {
  final String id;
  //final int width; // largeur
  //final int height; 
  //final Uri url;

  Cat(this.id);//, this.width, this.height, this.url);

  
  Cat.fromJson(Map<String, dynamic> json) : 
    id=json["id"]{}//,
    /*width=json["width"],
    height=json["height"],
    url=json["url"];
  */
  /*
  factory Cat.fromJson(Map<String, dynamic> json) {
    return Cat(
      id: json['id'],
      url: json['url'],
    );
  }
 */
}