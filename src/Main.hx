

import haxe.Resource;
import models.OSMPlace;
import Sys.*;

class TestTag {
  var key: String;
  var value: String;

  public function new(key: String, value: String) {
    this.key = key;
    this.value = value;
  }

  public function toString(): String {
    return "key: " + this.key + ", value: " + this.value; 
  }
}

class Employees {
  var firtName: String;
  var lastName: String;
}

class Main {
  static function main() {
    println("seek-search");
    // var resource = Resource.getString("placesDatabase");

    var db = new HaxeLow("places.json");
    
    println("contents...");
    var testTags = db.col(TestTag);
    for (tag in testTags) {
      println(tag.toString());
    }

    testTags.push(new TestTag("keyOP", "tagOP"));
    db.save();

    println(testTags.length);
  }
}

//http://overpass-api.de/api/interpreter?data=[out:json];(node(around:3000,57.7027141, 11.916687)[~"^name"~"café"];);out;

// nomantim
// https://nominatim.openstreetmap.org/search?<params>

// https://nominatim.openstreetmap.org/search?city=Göteborg&q=pizza

// https://nominatim.openstreetmap.org/ui/search.html?q=pizza&viewbox=11.90489%2C57.73020%2C12.07191%2C57.69572&bounded=1