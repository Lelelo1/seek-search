
package src;


import haxe.Exception;
import haxe.ds.Map;

class Dep {
    /// static var instances: Map<String, Dynamic> = new Map();
    
    // register

    // static var instances: Map<String, Dynamic> = new Map();

    static var dependencies: List<Dependency> = new List();

    public static function register(name: String, dep: Dynamic ): Void {
        var dependency = tryGet(name);
        if(dependency == null) {
            dependencies.add(new Dependency(name, dependency));
        }
        else {
            
        }
        
    }

    static function tryGet(name: String): Any {
        try {
            return Lambda.find(dependencies, d -> d.name == name);
        }
        catch(e) {
            // did not exist
        }
        return null;
    }
    

    //@:generic
    public static function get(name: String) : Any {
        var dependency = tryGet(name);

        if(dependency == null) {
            throw new Exception(name+" did not exist in Dep, you need to register an instance first");
        }

        /* not needed, use a simple 'cast' outside of dep instead
        var specificDependency: T;
        try {
            specificDependency = cast dependency;
        }
        catch(e) {
            throw new Exception("You are expecting wrong type for dependency '" + name+"'");
        }
        */
        return dependency;
    }

    function throwDepNotExist(name: String) {
        throw new Exception("dependency" + "'"+name+"' did already exist in Dep");
    }

    static var nativeDependencies: List<Dependency> = new List();

    public static function registerNative(name:String, constructor: () -> INativeImpl) {
        var nativeDependency = Lambda.find(nativeDependencies, n -> n.name == name);
        if(nativeDependency == null) {
            
            var nativeImpl:INativeImpl; 
            try {
                nativeImpl = constructor();
            }
            catch(e) {
                throw new Exception("Could not construct '"+name+"' as there where not native constructor for it");
            }
            nativeDependency = new Dependency(name, nativeImpl);
        }
        nativeDependencies.add(nativeDependency);
    }

    public static function getNative(name: String): INativeImpl {
        var nativeDependency = Lambda.find(nativeDependencies, n -> n.name == name);

        if(nativeDependency == null) {
            throw new Exception("native dependency" + "'"+name+"' did not exist in Dep");
        }
        return nativeDependency.value;
    }
}

private class Dependency {
    public var name: String;
    public var value: Any;
    public function new(name: String, value: Any) {
        this.name = name;
        this.value = value;
    }
}

interface INativeImpl {

} 



//var instance:T = GetImplIfExists();
        /*
        if(instance == null) {
            // throw new Exception("implemenation did not exists, you forgot to register it first");
            Sys.println("is null");
            var d = new T();
            // instance = Type.createInstance(T, null);
            Sys.println("instance: " + instance);
            instances.push(instance);
        }
        */