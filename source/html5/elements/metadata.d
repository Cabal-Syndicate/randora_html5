module html5.elements.metadata;

import html5;

class BaseElement : Html5Element!("base"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "href"));
	mixin(AttributeTemplate!(typeof(this), "target"));
}

class HeadElement : Html5Element!("head"){
	mixin(ElementConstructorTemplate!());
}

class LinkElement : Html5Element!("link"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "href"));
	mixin(AttributeTemplate!(typeof(this), "crossorigin"));
	mixin(AttributeTemplate!(typeof(this), "rel"));
	mixin(AttributeTemplate!(typeof(this), "media"));
	mixin(AttributeTemplate!(typeof(this), "hreflang"));
	mixin(AttributeTemplate!(typeof(this), "type"));
	mixin(AttributeTemplate!(typeof(this), "sizes"));

}

class MetaElement : Html5Element!("meta"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "name"));
	mixin(AttributeTemplate!(typeof(this), "http-equiv"));
	mixin(AttributeTemplate!(typeof(this), "content"));
	mixin(AttributeTemplate!(typeof(this), "charset"));

}

class TitleElement : Html5Element!("title"){
	mixin(ElementConstructorTemplate!());
}

class StyleElement : Html5Element!("style"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "media"));
	mixin(AttributeTemplate!(typeof(this), "type"));
}
