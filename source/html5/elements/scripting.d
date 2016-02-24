module html5.elements.scripting;

import html5;

class ScriptElement : Html5Element!("script"){
	mixin(ElementConstructorTemplate!());
}

class NoscriptElement : Html5Element!("noscript"){
	mixin(ElementConstructorTemplate!());
}

class TemplateElement : Html5Element!("template"){
	mixin(ElementConstructorTemplate!());
}

class CanvasElement : Html5Element!("canvas"){
	mixin(ElementConstructorTemplate!());
}
