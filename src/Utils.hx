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

    
}