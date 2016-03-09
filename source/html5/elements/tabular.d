module html5.elements.tabular;

import html5;

class TableElement : Html5Element!("table"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "border"));
	mixin(AttributeTemplate!(typeof(this), "sortable"));
}

class CaptionElement : Html5Element!("caption"){
	mixin(ElementConstructorTemplate!());
}

class ColgroupElement : Html5Element!("colgroup"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "span"));
}

class ColElement : Html5Element!("col"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "span"))
}

class TbodyElement : Html5Element!("tbody"){
	mixin(ElementConstructorTemplate!());
}

class TheadElement : Html5Element!("thead"){
	mixin(ElementConstructorTemplate!());
}

class TfootElement : Html5Element!("tfoot"){
	mixin(ElementConstructorTemplate!());
}

class TrElement : Html5Element!("tr"){
	mixin(ElementConstructorTemplate!());
}

class TdElement : Html5Element!("td"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "colspan"));
	mixin(AttributeTemplate!(typeof(this), "rowspan"));
	mixin(AttributeTemplate!(typeof(this), "headers"));
}

class ThElement : Html5Element!("th"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "colspan"));
	mixin(AttributeTemplate!(typeof(this), "rowspan"));
	mixin(AttributeTemplate!(typeof(this), "headers"));
	mixin(AttributeTemplate!(typeof(this), "scope"));
	mixin(AttributeTemplate!(typeof(this), "abbr"));
	mixin(AttributeTemplate!(typeof(this), "sorted"));
}
