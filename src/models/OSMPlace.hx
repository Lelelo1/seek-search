package models;

class OSMPlace {
    var name: String;
    var address: String;
    var categories: Array<String>;

    public function new(name: String, address: String, categories: Array<String>) {
        this.name = name;
        this.address = address;
        this.categories = categories;
    }
}