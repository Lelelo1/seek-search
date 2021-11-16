
// https://github.com/praeclarum/sqlite-net


import sys.io.File;
import haxe.Resource;
import models.*;

class Main {
  static function main() {
    
    Sys.println("seek-search");    
    
    /*
    var testTags = TestTag.createMany();
    var text = "";
    for(tag in testTags) {
      text += tag.toString();
    }
    // https://stackoverflow.com/questions/30227811/save-app-data-on-android-ios-using-haxe-openfl
    var filename = "./testTags.txt"; // should not use local directory, is invaid in client
    var output = File.write(filename, false);
    output.writeString(text);
    output.close();
    
    Sys.println("read written file...");
    var input = File.read(filename, false);
    var gotText = input.readLine();
    
    Sys.println(gotText);
    */
  }
  // works on android 
  public static function testReadWrite(url: String): Void {
    Sys.println("seek-search");    
    
    var testTags = TestTag.createMany();
    var text = "";
    for(tag in testTags) {
      text += tag.toString();
    }
    // https://stackoverflow.com/questions/30227811/save-app-data-on-android-ios-using-haxe-openfl
    var filepath = url + "/testTags.txt";
    var output = File.write(filepath, false);
    output.writeString(text);
    output.close();
    
    Sys.println("read written file...");
    var input = File.read(filepath, false);
    var gotText = input.readLine();
    
    Sys.println(gotText);
  }
}

//http://overpass-api.de/api/interpreter?data=[out:json];(node(around:3000,57.7027141, 11.916687)[~"^name"~"café"];);out;

// nomantim
// https://nominatim.openstreetmap.org/search?<params>

// https://nominatim.openstreetmap.org/search?city=Göteborg&q=pizza

// https://nominatim.openstreetmap.org/ui/search.html?q=pizza&viewbox=11.90489%2C57.73020%2C12.07191%2C57.69572&bounded=1