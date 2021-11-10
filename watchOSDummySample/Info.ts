
// these are old notes from starting out and learning about openstreetmap and such

/*let map: google.maps.Map;

function initMap(): void {
  map = new google.maps.Map(document.getElementById("map") as HTMLElement, {
    center: { lat: -34.397, lng: 150.644 },
    zoom: 8,
  });
  map.
}
*/

import fetch from "node-fetch";

console.log("start");

// 57.7089 11.9746
// http://photon.komoot.io/api/?q=pizza&lat=57.7089&lon=11.9746


// https://nominatim.openstreetmap.org/pizza?<params>
// https://nominatim.openstreetmap.org/?addressdetails=1&q=pizza, lat lon&format=json&limit=1
// https://nominatim.openstreetmap.org/?addressdetails=1&q=pizza, 57.7089 11.9746&format=json&limit=1
// near [41.760584,-88.320071]
// https://nominatim.openstreetmap.org/?addressdetails=1&q=pizza, near [41.760584,-88.320071]&format=json&limit=10

// 57.7027141, 11.916687 <--eriksberg
https://nominatim.openstreetmap.org/?addressdetails=1&q=pizza, 57.7027141, 11.916687&format=json
// bbox=left,bottom,right,top

fetch('http://www.bing.com/api/maps/mapcontrol?callback=GetMap&key=Am4FvBlBLAm7qXQEVw_2AlrN1A5tmpXAtSfPNOlIrj9Hi7ba6KRQcVtpT-gecXnh').then((value) => value.json()).then((json) => {
  console.log(json);
})

http://overpass-api.de/api/interpreter?data=node[*](34.21092368471588,-118.6453487197585,34.212720315284116,-118.64752128024149););out center;

// färjenäs parken; 57.697255528906794,11.901648888613714,coop rondell: 57.709701878362885,11.918365178920073 

// https://gis.stackexchange.com/questions/203300/how-to-download-all-osm-data-within-a-boundingbox-with-overpass
// http://overpass-api.de/api/interpreter?data=[out:json];(node(11,50,11.1,50.1);<;);out meta;

// (lowerleft, upperight) location given to url 
// https://overpass-api.de/api/interpreter?data=[out:json];(node(57.697255528906794,11.901648888613714,57.709701878362885,11.918365178920073);node["description"](57.697255528906794,11.901648888613714,57.709701878362885,11.918365178920073);<;);out; // out meta;


http://localhost:7071/api/SeekSearch?latitude=57.7027141&longitude=11.916687&radius=500

// -> C:\Program Files\Java\jdk1.8.0_60

// C:\home\site\wwwroot

// https://seeksearch.azurewebsites.net/api/SeekSearch?code=6/23JlvDSTAfZ7l8PRQ4f3V8k0mlYvLIhQRXzWvE/yEbCQHbyNXkWw==

//search china: 28.214527499104538, 113.0156935972356
https://overpass-api.de/api/interpreter?data=[out:json];(node(28.135674516630576,112.97819434471268,28.222529507681283,113.0623084142871);<;);out meta;

// any lang search [name, addres]
// english search [aminenty, tourism]

https://taginfo.openstreetmap.org/api/4/wiki/tags?key=highway&value=secondary

// query for tags info: https://taginfo.openstreetmap.org/taginfo/apidoc#api_4_key_values
https://taginfo.openstreetmap.org/api/4/key/values?key=tourism
https://taginfo.openstreetmap.org/api/4/key/values?key=amenity

// can probably also get icons from the tags!!

https://seeksearch.azurewebsites.net/api/SeekSearch?code=6/23JlvDSTAfZ7l8PRQ4f3V8k0mlYvLIhQRXzWvE/yEbCQHbyNXkWw==&latitude=57.7027141&longitude=11.916687&radius=500

https://wiki.openstreetmap.org/wiki/Key:amenity
https://wiki.openstreetmap.org/wiki/Map_Icons/WikiProject_Pictograms
//Needs to be grabbed from a project it seems https://taginfo.openstreetmap.org/api/4/project/tags?project=id_editor

// https://taginfo.openstreetmap.org/taginfo/projects

// to have extra info, description and wikipedia links on elements from overpass
// https://wiki.openstreetmap.org/wiki/Key:description


// masthugget: 57.69846638561655, 11.940787946184658
// windows
// with v1 for fix response 'too many requests'; can not be cancelled though
https://seeksearch.azurewebsites.net/api/SeekSearch?code=6/23JlvDSTAfZ7l8PRQ4f3V8k0mlYvLIhQRXzWvE/yEbCQHbyNXkWw==&latitude=57.69846638561655&longitude=11.940787946184658&radius=800&search=sushi


// linux
https://seeksearchlinux.azurewebsites.net/api/seeksearch?code=2T6YKif1J6dKW5TQGb7pv8HQ0eWvrtap1qm0Q9kOfc4M0kx3xaJw0A==&latitude=57.69846638561655&longitude=11.940787946184658&radius=800&search=sushi
// func azure functionapp publish SeekSearchLinux to publish linux

// seeksearchgoogle

https://us-central1-seek-267616.cloudfunctions.net/SeekSearchGoogle?latitude=57.69846638561655&longitude=11.940787946184658&radius=800&search=sushi

// gcloud init
// then ..
// gcloud functions deploy SeekSearchGoogle --entry-point SeekSearchGoogle.Function --runtime dotnet3 --trigger-http --allow-unauthenticated
// to publish function

// bing

// gives lot of cafeterias in us like sample, but not in gbg location:
https://dev.virtualearth.net/REST/v1/LocalSearch/?query=bar&userCircularMapView=57.69846638561655,11.940787946184658,5000&key=Am4FvBlBLAm7qXQEVw_2AlrN1A5tmpXAtSfPNOlIrj9Hi7ba6KRQcVtpT-gecXnh