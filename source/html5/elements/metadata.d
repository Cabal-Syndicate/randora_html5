module html5.elements.metadata;

import html5;

class MetadataElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class BaseElement : MetadataElementPrototype!("base"){
	mixin(ElementConstructorTemplate!());
}

class HeadElement : MetadataElementPrototype!("head"){
	mixin(ElementConstructorTemplate!());
}

class LinkElement : MetadataElementPrototype!("link"){
	mixin(ElementConstructorTemplate!());
}

class MetaElement : MetadataElementPrototype!("meta"){
	mixin(ElementConstructorTemplate!());
}

class TitleElement : MetadataElementPrototype!("title"){
	mixin(ElementConstructorTemplate!());
}

class StyleElement : MetadataElementPrototype!("style"){
	mixin(ElementConstructorTemplate!());
}
