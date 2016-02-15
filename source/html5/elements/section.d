module html5.elements.section;

import html5;

class SectionElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class ArticleElement : SectionElementPrototype!("article"){
	mixin(ElementConstructorTemplate!());
}

class BodyElement : SectionElementPrototype!("body"){
	mixin(ElementConstructorTemplate!());
}

class SectionElement : SectionElementPrototype!("section"){
	mixin(ElementConstructorTemplate!());
}

class NavElement : SectionElementPrototype!("nav"){
	mixin(ElementConstructorTemplate!());
}

class AsideElement : SectionElementPrototype!("aside"){
	mixin(ElementConstructorTemplate!());
}

class H1Element : SectionElementPrototype!("h1"){
	mixin(ElementConstructorTemplate!());
}

class H2Element : SectionElementPrototype!("h2"){
	mixin(ElementConstructorTemplate!());
}

class H3Element : SectionElementPrototype!("h3"){
	mixin(ElementConstructorTemplate!());
}

class H4Element : SectionElementPrototype!("h4"){
	mixin(ElementConstructorTemplate!());
}

class H5Element : SectionElementPrototype!("h5"){
	mixin(ElementConstructorTemplate!());
}

class H6Element : SectionElementPrototype!("h6"){
	mixin(ElementConstructorTemplate!());
}

class HeaderElement : SectionElementPrototype!("header"){
	mixin(ElementConstructorTemplate!());
}

class FooterElement : SectionElementPrototype!("footer"){
	mixin(ElementConstructorTemplate!());
}

class AddressElement : SectionElementPrototype!("address"){
	mixin(ElementConstructorTemplate!());
}
