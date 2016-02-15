module html5.elements.root;

import html5;

class RootElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class HtmlElement : RootElementPrototype!("html"){
	mixin(ElementConstructorTemplate!());
}
