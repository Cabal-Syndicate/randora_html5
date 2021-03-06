module html5.elements.text_level;

import html5;

class AElement : Html5Element!("a"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!(typeof(this), "href"));
	mixin(AttributeTemplate!(typeof(this), "target"));
	mixin(AttributeTemplate!(typeof(this), "download"));
	mixin(AttributeTemplate!(typeof(this), "rel"));
	mixin(AttributeTemplate!(typeof(this), "hreflang"));
	mixin(AttributeTemplate!(typeof(this), "type"));
}

class EmElement : Html5Element!("em"){
	mixin(ElementConstructorTemplate!());
}

class StrongElement : Html5Element!("strong"){
	mixin(ElementConstructorTemplate!());
}

class SmallElement : Html5Element!("small", true){
	mixin(ElementConstructorTemplate!());
}

class SElement : Html5Element!("s"){
	mixin(ElementConstructorTemplate!());
}

class CiteElement : Html5Element!("cite"){
	mixin(ElementConstructorTemplate!());
}

class QElement : Html5Element!("q"){
	mixin(ElementConstructorTemplate!());
}

class DfnElement : Html5Element!("dfn"){
	mixin(ElementConstructorTemplate!());
}

class AbbrElement : Html5Element!("abbr"){
	mixin(ElementConstructorTemplate!());
}

class DataElement : Html5Element!("data"){
	mixin(ElementConstructorTemplate!());
}

class TimeElement : Html5Element!("time"){
	mixin(ElementConstructorTemplate!());
}

class CodeElement : Html5Element!("code"){
	mixin(ElementConstructorTemplate!());
}

class VarElement : Html5Element!("var"){
	mixin(ElementConstructorTemplate!());
}

class SampElement : Html5Element!("samp"){
	mixin(ElementConstructorTemplate!());
}

class KbdElement : Html5Element!("kbd"){
	mixin(ElementConstructorTemplate!());
}

class SubElement : Html5Element!("sub"){
	mixin(ElementConstructorTemplate!());
}

class SupsElement : Html5Element!("sups"){
	mixin(ElementConstructorTemplate!());
}

class IElement : Html5Element!("i"){
	mixin(ElementConstructorTemplate!());
}

class BElement : Html5Element!("b"){
	mixin(ElementConstructorTemplate!());
}

class UElement : Html5Element!("u"){
	mixin(ElementConstructorTemplate!());
}

class MarkElement : Html5Element!("mark"){
	mixin(ElementConstructorTemplate!());
}

class RubyElement : Html5Element!("ruby"){
	mixin(ElementConstructorTemplate!());
}

class RbElement : Html5Element!("rb"){
	mixin(ElementConstructorTemplate!());
}

class RtElement : Html5Element!("rt"){
	mixin(ElementConstructorTemplate!());
}

class RtcElement : Html5Element!("rtc"){
	mixin(ElementConstructorTemplate!());
}

class RpElement : Html5Element!("rp"){
	mixin(ElementConstructorTemplate!());
}

class BdiElement : Html5Element!("bdi"){
	mixin(ElementConstructorTemplate!());
}

class BdoElement : Html5Element!("bdo"){
	mixin(ElementConstructorTemplate!());
}

class SpanElement : Html5Element!("span"){
	mixin(ElementConstructorTemplate!());
}

class BrElement : Html5Element!("br"){
	mixin(ElementConstructorTemplate!());
}

class WbrElement : Html5Element!("wbr"){
	mixin(ElementConstructorTemplate!());
}
