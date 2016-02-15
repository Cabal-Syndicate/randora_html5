module html5.elements.grouping.grouping;

import html5;

class GroupingElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class PElement : GroupingElementPrototype!("p"){
	mixin(ElementConstructorTemplate!());
}
class HrElement : GroupingElementPrototype!("hr"){
	mixin(ElementConstructorTemplate!());
}
class PreElement : GroupingElementPrototype!("pre"){
	mixin(ElementConstructorTemplate!());
}
class BlockquoteElement : GroupingElementPrototype!("blockquote"){
	mixin(ElementConstructorTemplate!());
}
class DlElement : GroupingElementPrototype!("dl"){
	mixin(ElementConstructorTemplate!());
}
class DtElement : GroupingElementPrototype!("dt"){
	mixin(ElementConstructorTemplate!());
}
class DdElement : GroupingElementPrototype!("dd"){
	mixin(ElementConstructorTemplate!());
}
class OlElement : GroupingElementPrototype!("ol"){
	mixin(ElementConstructorTemplate!());
}
class UlElement : GroupingElementPrototype!("ul"){
	mixin(ElementConstructorTemplate!());
}
class LiElement : GroupingElementPrototype!("li"){
	mixin(ElementConstructorTemplate!());
}
class FigureElement : GroupingElementPrototype!("figure"){
	mixin(ElementConstructorTemplate!());
}
class FigcaptionElement : GroupingElementPrototype!("figcaption"){
	mixin(ElementConstructorTemplate!());
}
class MainElement : GroupingElementPrototype!("main"){
	mixin(ElementConstructorTemplate!());
}

