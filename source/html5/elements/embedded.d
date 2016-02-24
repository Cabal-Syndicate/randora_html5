module html5.elements.embedded;

import html5;

class ImgElement : Html5Element!("img"){
	mixin(ElementConstructorTemplate!());
}

class IframeElement : Html5Element!("iframe"){
	mixin(ElementConstructorTemplate!());
}

class EmbedElement : Html5Element!("embed"){
	mixin(ElementConstructorTemplate!());
}

class ObjectElement : Html5Element!("object"){
	mixin(ElementConstructorTemplate!());
}

class ParamElement : Html5Element!("param"){
	mixin(ElementConstructorTemplate!());
}

class VideoElement : Html5Element!("video"){
	mixin(ElementConstructorTemplate!());
}

class AudioElement : Html5Element!("audio"){
	mixin(ElementConstructorTemplate!());
}

class SourceElement : Html5Element!("source"){
	mixin(ElementConstructorTemplate!());
}

class TrackElement : Html5Element!("track"){
	mixin(ElementConstructorTemplate!());
}

class MapElement : Html5Element!("map"){
	mixin(ElementConstructorTemplate!());
}

class AreaElement : Html5Element!("area"){
	mixin(ElementConstructorTemplate!());
}
