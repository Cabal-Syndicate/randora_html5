module html5.elements.embedded;

import html5;

class ImgElement : Html5Element!("img"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "alt"));
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "crossorigin"));
	mixin(AttributeTemplate!(typeof(this), "usamap"));
	mixin(AttributeTemplate!(typeof(this), "ismap"));
	mixin(AttributeTemplate!(typeof(this), "width"));
	mixin(AttributeTemplate!(typeof(this), "height"));
}

class IframeElement : Html5Element!("iframe"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "srcdoc"));
	mixin(AttributeTemplate!(typeof(this), "name"));
	mixin(AttributeTemplate!(typeof(this), "sandbox"));
	mixin(AttributeTemplate!(typeof(this), "width"));
	mixin(AttributeTemplate!(typeof(this), "height"));
}

class EmbedElement : Html5Element!("embed"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "type"));
	mixin(AttributeTemplate!(typeof(this), "width"));
	mixin(AttributeTemplate!(typeof(this), "height"));
}

class ObjectElement : Html5Element!("object"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "data"));
	mixin(AttributeTemplate!(typeof(this), "type"));
	mixin(AttributeTemplate!(typeof(this), "typemustwatch"));
	mixin(AttributeTemplate!(typeof(this), "name"));
	mixin(AttributeTemplate!(typeof(this), "usemap"));
	mixin(AttributeTemplate!(typeof(this), "form"));
	mixin(AttributeTemplate!(typeof(this), "width"));
	mixin(AttributeTemplate!(typeof(this), "height"));
}

class ParamElement : Html5Element!("param"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "name"));
	mixin(AttributeTemplate!(typeof(this), "value"));
}

class VideoElement : Html5Element!("video"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "crossorigin"));
	mixin(AttributeTemplate!(typeof(this), "poster"));
	mixin(AttributeTemplate!(typeof(this), "preload"));
	mixin(AttributeTemplate!(typeof(this), "autoplay"));
	mixin(AttributeTemplate!(typeof(this), "mediagroup"));
	mixin(AttributeTemplate!(typeof(this), "loop"));
	mixin(AttributeTemplate!(typeof(this), "muted"));
	mixin(AttributeTemplate!(typeof(this), "controls"));
	mixin(AttributeTemplate!(typeof(this), "width"));
	mixin(AttributeTemplate!(typeof(this), "height"));
}

class AudioElement : Html5Element!("audio"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "crossorigin"));
	mixin(AttributeTemplate!(typeof(this), "preload"));
	mixin(AttributeTemplate!(typeof(this), "autoplay"));
	mixin(AttributeTemplate!(typeof(this), "mediagroup"));
	mixin(AttributeTemplate!(typeof(this), "loop"));
	mixin(AttributeTemplate!(typeof(this), "muted"));
	mixin(AttributeTemplate!(typeof(this), "controls"));
}

class SourceElement : Html5Element!("source"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "type"));

}

class TrackElement : Html5Element!("track"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "kind"));
	mixin(AttributeTemplate!(typeof(this), "src"));
	mixin(AttributeTemplate!(typeof(this), "srclang"));
	mixin(AttributeTemplate!(typeof(this), "label"));
	mixin(AttributeTemplate!(typeof(this), "default"));

}

class MapElement : Html5Element!("map"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "name"));
}

class AreaElement : Html5Element!("area"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "alt"));
	mixin(AttributeTemplate!(typeof(this), "coords"));
	mixin(AttributeTemplate!(typeof(this), "download"));
	mixin(AttributeTemplate!(typeof(this), "href"));
	mixin(AttributeTemplate!(typeof(this), "hreflang"));
	mixin(AttributeTemplate!(typeof(this), "rel"));
	mixin(AttributeTemplate!(typeof(this), "shape"));
	mixin(AttributeTemplate!(typeof(this), "target"));
	mixin(AttributeTemplate!(typeof(this), "type"));
}
