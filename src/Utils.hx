import Main.TestTag;


class Utils {
    public static function getNameOfTarget(): String {
        var targetName = "unknown target";
        #if interp 
        targetName = "interp";
        #elseif cpp
        targetName = "cpp"; // assume this is run, check it when running in a client
        #end
        return targetName;
    }

    public static function createTestTags(count: Int = 10): Array<TestTag> {
        var key = "key"; var value = "value";
        var testTags  = new Array<Int>();
        teestTags
        for(var i = 0; i++; i < count) {
            testTags.
        }
        
        return null;
    }
}