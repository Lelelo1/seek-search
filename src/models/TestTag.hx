package models;

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

    public static function createMany(count: Int = 10): Array<TestTag> {
        var key = "key"; var value = "value";
        var testTags  = new Array<TestTag>();
    
        for(i in 1...1 + count) {
            testTags.push(new TestTag(key + i, value  + i));
        }
            
        return testTags;
    }
}