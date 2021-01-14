//Класс (на данный момент) содержит описание объекта достопримечательности
enum SightType {
  iconicBuildings, //культовые памятники
  architecturalMonuments, //памятники архитектуры
  streetsAndDistricts, //улицы и районы
  modernStructures, //современные сооружения
  theatersAndMuseums, //театры и музеи
  parksAndNature, //парки и природа
  museum, //музей
}

class Sight {
  String name; //название достопримечательности
  double lat, lon; //координаты места
  String url; //путь до фотографии в интернете
  String details; //описание достопримечательности
  SightType type; //тип достопримечательности

  Sight(String name, double lat, double lon, String url, String details,
      SightType type) {
    this.name = name;
    this.lat = lat;
    this.lon = lon;
    this.url = url;
    this.details = details;
    this.type = type;
  }
}
