module html5.elements.tabular;

import html5;

class TabularElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class TableElement : TabularElementPrototype!("table"){
	mixin(ElementConstructorTemplate!());
}

class CaptionElement : TabularElementPrototype!("caption"){
	mixin(ElementConstructorTemplate!());
}

class ColgroupElement : TabularElementPrototype!("colgroup"){
	mixin(ElementConstructorTemplate!());
}

class ColElement : TabularElementPrototype!("col"){
	mixin(ElementConstructorTemplate!());
}

class TbodyElement : TabularElementPrototype!("tbody"){
	mixin(ElementConstructorTemplate!());
}

class TheadElement : TabularElementPrototype!("thead"){
	mixin(ElementConstructorTemplate!());
}

class TfootElement : TabularElementPrototype!("tfoot"){
	mixin(ElementConstructorTemplate!());
}

class TrElement : TabularElementPrototype!("tr"){
	mixin(ElementConstructorTemplate!());
}

class TdElement : TabularElementPrototype!("td"){
	mixin(ElementConstructorTemplate!());
}

class ThElement : TabularElementPrototype!("th"){
	mixin(ElementConstructorTemplate!());
}
