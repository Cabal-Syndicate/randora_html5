module html5.elements.scripting;

import html5;

class ScriptingElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class ScriptElement : ScriptingElementPrototype!("script"){
	mixin(ElementConstructorTemplate!());
}

class NoscriptElement : ScriptingElementPrototype!("noscript"){
	mixin(ElementConstructorTemplate!());
}

class TemplateElement : ScriptingElementPrototype!("template"){
	mixin(ElementConstructorTemplate!());
}

class CanvasElement : ScriptingElementPrototype!("canvas"){
	mixin(ElementConstructorTemplate!());
}
