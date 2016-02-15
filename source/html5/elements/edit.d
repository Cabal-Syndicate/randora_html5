module html5.elements.edit;

import html5;

class EditElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class InsElement : EditElementPrototype!("ins"){
	mixin(ElementConstructorTemplate!());
}

class DelElement : EditElementPrototype!("ins"){
	mixin(ElementConstructorTemplate!());
}

