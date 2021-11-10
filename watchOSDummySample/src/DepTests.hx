
package src;

import src.Dep;

// import haxe.Constraints.Constructible;

class DepTests {
    public static function depTests() {
        //var instanceA: Dynamic = Dep.Get("", );

        Dep.register("dependencyA", new DependencyA());
        Dep.register("dependencyA1", new DependencyA());
        var a: DependencyA = cast Dep.get("dependencyA");
        Sys.println(a.description);
        Dep.register("dependencyB0", new DependencyB());

        Dep.register("dependencyC", new DependencyC());
        Dep.register("dependencyC1", new DependencyC());

        var c1: DependencyC  = cast Dep.get("dependencyC1");
        var c11: DependencyC  = cast Dep.get("dependencyC1");
        var c111: DependencyC  = cast Dep.get("dependencyC1");

        Sys.println(DependencyC.count()); // should be 2
        Sys.println(DependencyB.count()); // should be 1

        var b: DependencyB = cast Dep.get("dependencyB0");
        Sys.println(b.description);
        
    }

    public static function mockDepTests() {
        //Dep.registerNative("NativeA",)

        var constructor = () -> {
            var impl: INativeImpl = null;
            
            try {
                impl = new NativeImplA();
            }
            try {
                impl = new NativeImplB();
            }
            try {
                impl = new NativeImplC();
            }
            return impl;
        }
        Dep.registerNative("IService", constructor);

        var service: IService = cast Dep.getNative("IService");
        Sys.println(service.useSomethingNative());
    }
}

class DependencyA {
    public var description: String = "A";
    static var _count: Int= 0;
    public static var count = () -> _count;
    public function new() {    
        _count ++;
    }
}
class DependencyB {
    public var description: String = "B";
    static var _count: Int = 0;
    public static var count = () -> _count;
    public function new() {    
        _count ++;
    }
}
class DependencyC {
    public var description: String = "C";
    static var _count: Int = 0;
    public static var count = () -> _count;
    public function new() {    
        _count ++;
    }
}

// only one platform
class NativePlatformA {
    public var description: String = "NativePlatformA";
}

class NativePlatformB {
    public var description: String = "NativePlatformB";
    public var field: String = "stripB1"; // strip fields not defined in IService
    public var anotherfield: String = "stripB2";
}

class NativePlatformC {
    public var description: String = "NativePlatformC";
}

interface IService extends INativeImpl {
    public var description: String;
    public function useSomethingNative(): String;
}

class NativeImplA extends NativePlatformA implements IService {

    public function new() {
        
    }

	public function useSomethingNative():String {
		return this.description + " was used";
	}
}

class NativeImplB extends NativePlatformB implements IService {

    public function new() {
        
    }

	public function useSomethingNative():String {
		return this.description + "wasused" +this.anotherfield;
	}
}

class NativeImplC extends NativePlatformA implements IService {

    public function new() {
        
    }

    public function useSomethingNative():String {
		return this.description + "wasused333";
	}
}   