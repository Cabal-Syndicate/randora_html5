module html5.elements.metadata;

import html5;

class BaseElement : Html5Element!("base"){
	mixin(ElementConstructorTemplate!());
}

class HeadElement : Html5Element!("head"){
	mixin(ElementConstructorTemplate!());
}

class LinkElement : Html5Element!("link"){
	mixin(ElementConstructorTemplate!());
}

class MetaElement : Html5Element!("meta"){
	mixin(ElementConstructorTemplate!());
}

class TitleElement : Html5Element!("title"){
	mixin(ElementConstructorTemplate!());
}

class StyleElement : Html5Element!("style"){
	mixin(ElementConstructorTemplate!());
}
