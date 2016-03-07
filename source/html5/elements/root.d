module html5.elements.root;

import html5;

class HtmlElement : Html5Element!("html"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "manifest"));
}
