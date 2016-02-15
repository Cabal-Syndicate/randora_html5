module html5.elements.embedded;

import html5;

class EmbeddedElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class ImgElement : EmbeddedElementPrototype!("img"){
	mixin(ElementConstructorTemplate!());
}

class IframeElement : EmbeddedElementPrototype!("iframe"){
	mixin(ElementConstructorTemplate!());
}

class EmbedElement : EmbeddedElementPrototype!("embed"){
	mixin(ElementConstructorTemplate!());
}

class ObjectElement : EmbeddedElementPrototype!("object"){
	mixin(ElementConstructorTemplate!());
}

class ParamElement : EmbeddedElementPrototype!("param"){
	mixin(ElementConstructorTemplate!());
}

class VideoElement : EmbeddedElementPrototype!("video"){
	mixin(ElementConstructorTemplate!());
}

class AudioElement : EmbeddedElementPrototype!("audio"){
	mixin(ElementConstructorTemplate!());
}

class SourceElement : EmbeddedElementPrototype!("source"){
	mixin(ElementConstructorTemplate!());
}

class TrackElement : EmbeddedElementPrototype!("track"){
	mixin(ElementConstructorTemplate!());
}

class MapElement : EmbeddedElementPrototype!("map"){
	mixin(ElementConstructorTemplate!());
}

class AreaElement : EmbeddedElementPrototype!("area"){
	mixin(ElementConstructorTemplate!());
}
