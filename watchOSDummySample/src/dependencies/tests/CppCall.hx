package dependencies.tests;

import cpp.ConstCharStar;

// https://github.com/Gaikov/HaxeWithCppIntegrationExample

@:include("./HaxeCpp.h")
//@:buildXml('<target id="haxe"><lib name="../../../HaxeCpp/Debug/HaxeCpp.lib"/></target>')
extern class CppCall
{
	@:native("CPP_ShowMessage")
	static public function showMessage(message:ConstCharStar):Void;

	@:native("CPP_CreateObject")
	static public function createObject():CppClass;
}

@:native("::cpp::Reference<CppClass>")
extern class CppClass
{
	public function showMessage(message:ConstCharStar):Void;
}