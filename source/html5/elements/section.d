module html5.elements.section;

import html5;

class ArticleElement : Html5Element!("article"){
	mixin(ElementConstructorTemplate!());
}

class BodyElement : Html5Element!("body"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "onafterprint"));
	mixin(AttributeTemplate!(typeof(this), "onbeforeprint"));
	mixin(AttributeTemplate!(typeof(this), "onbeforeunload"));
	mixin(AttributeTemplate!(typeof(this), "onhashchange"));
	mixin(AttributeTemplate!(typeof(this), "onmessage"));
	mixin(AttributeTemplate!(typeof(this), "onoffline"));
	mixin(AttributeTemplate!(typeof(this), "ononline"));
	mixin(AttributeTemplate!(typeof(this), "onpagehide"));
	mixin(AttributeTemplate!(typeof(this), "onpageshow"));
	mixin(AttributeTemplate!(typeof(this), "onpopstate"));
	mixin(AttributeTemplate!(typeof(this), "onstorage"));
	mixin(AttributeTemplate!(typeof(this), "onunload"));
}

class SectionElement : Html5Element!("section"){
	mixin(ElementConstructorTemplate!());
}

class NavElement : Html5Element!("nav"){
	mixin(ElementConstructorTemplate!());
}

class AsideElement : Html5Element!("aside"){
	mixin(ElementConstructorTemplate!());
}

class H1Element : Html5Element!("h1"){
	mixin(ElementConstructorTemplate!());
}

class H2Element : Html5Element!("h2"){
	mixin(ElementConstructorTemplate!());
}

class H3Element : Html5Element!("h3"){
	mixin(ElementConstructorTemplate!());
}

class H4Element : Html5Element!("h4"){
	mixin(ElementConstructorTemplate!());
}

class H5Element : Html5Element!("h5"){
	mixin(ElementConstructorTemplate!());
}

class H6Element : Html5Element!("h6"){
	mixin(ElementConstructorTemplate!());
}

class HeaderElement : Html5Element!("header"){
	mixin(ElementConstructorTemplate!());
}

class FooterElement : Html5Element!("footer"){
	mixin(ElementConstructorTemplate!());
}

class AddressElement : Html5Element!("address"){
	mixin(ElementConstructorTemplate!());
}
