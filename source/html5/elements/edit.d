module html5.elements.edit;

import html5;

class InsElement : Html5Element!("ins"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "cite"));
	mixin(AttributeTemplate!(typeof(this), "datetime"));
}

class DelElement : Html5Element!("del"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "cite"));
	mixin(AttributeTemplate!(typeof(this), "datetime"));
}

