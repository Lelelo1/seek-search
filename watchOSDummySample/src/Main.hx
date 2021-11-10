
import src.DepTests;
import src.Dep;
import dependencies.tests.CppCall;
class Main {
  static function main() {
    Sys.println("Start");
    //DepTests.complete();
    //DepTests.mockDepTests();
	//Sys.println(Test.make().add(10, 12));
	Sys.println(Dependency.getDescription());
	Sys.println(AttributedDependency.getDescription());

	CppCall.showMessage("Hello from CPP!");
	var obj:CppClass = CppCall.createObject();
	obj.showMessage("Hello from CPP object!");
  }
}

 // ios: //-D iphoneos
//-D HXCPP_ARM64

class Dependency {
	public static function getDescription() {
		return "I am a non attributed class in haxe";
	}
}


@:build(HaxeCBridge.expose())
class AttributedDependency {
	public static function getDescription() {
		return "I am a attributed class in haxe";
	}
}

/*
@:structAccess
@:unreflective
@:include('./dependencies/tests/Test.h')
@:native('Test')
extern class Test {
	@:native('new Test')
	public static function create():Star<Test>;

	@:native('Test')
	public static function make():Test;

	public function add(a:Int, b:Int):Int;
	public function print(input:ConstCharStar):Void;

	@:native('print')
	public inline function alternatePrint(input:String):Void {
		untyped __cpp__('{0}->print({1}.c_str())', this, input);
	}

	@:native('~Test')
	public function delete():Void;
}
*/
  // run with ..
  // haxe --main src.Main --interp
  // ..from project root
  // https://haxe.org/manual/introduction-hello-world.html
  // {

// actually run with haxe build.hxml
// https://community.haxe.org/t/consume-jar-files/2970/3
// and add compile target at the end of the file, see bottom of page each: https://haxe.org/documentation/introduction/
