module html5.elements.edit;

import html5;

class InsElement : Html5Element!("ins"){
	mixin(ElementConstructorTemplate!());
}

class DelElement : Html5Element!("del"){
	mixin(ElementConstructorTemplate!());
}

