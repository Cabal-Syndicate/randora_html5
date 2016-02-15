module html5.elements.text_level;

import html5;

class TextLevelElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class AElement : TextLevelElementPrototype!("a"){
	mixin(ElementConstructorTemplate!());
	mixin(AttributeTemplate!("href"));
}

class EmElement : TextLevelElementPrototype!("em"){
	mixin(ElementConstructorTemplate!());
}

class StrongElement : TextLevelElementPrototype!("strong"){
	mixin(ElementConstructorTemplate!());
}

class SmallElement : TextLevelElementPrototype!("small"){
	mixin(ElementConstructorTemplate!());
}

class SElement : TextLevelElementPrototype!("s"){
	mixin(ElementConstructorTemplate!());
}

class CiteElement : TextLevelElementPrototype!("cite"){
	mixin(ElementConstructorTemplate!());
}

class QElement : TextLevelElementPrototype!("q"){
	mixin(ElementConstructorTemplate!());
}

class DfnElement : TextLevelElementPrototype!("dfn"){
	mixin(ElementConstructorTemplate!());
}

class AbbrElement : TextLevelElementPrototype!("abbr"){
	mixin(ElementConstructorTemplate!());
}

class DataElement : TextLevelElementPrototype!("data"){
	mixin(ElementConstructorTemplate!());
}

class TimeElement : TextLevelElementPrototype!("time"){
	mixin(ElementConstructorTemplate!());
}

class CodeElement : TextLevelElementPrototype!("code"){
	mixin(ElementConstructorTemplate!());
}

class VarElement : TextLevelElementPrototype!("var"){
	mixin(ElementConstructorTemplate!());
}

class SampElement : TextLevelElementPrototype!("samp"){
	mixin(ElementConstructorTemplate!());
}

class KbdElement : TextLevelElementPrototype!("kbd"){
	mixin(ElementConstructorTemplate!());
}

class SubElement : TextLevelElementPrototype!("sub"){
	mixin(ElementConstructorTemplate!());
}

class SupsElement : TextLevelElementPrototype!("sups"){
	mixin(ElementConstructorTemplate!());
}

class IElement : TextLevelElementPrototype!("i"){
	mixin(ElementConstructorTemplate!());
}

class BElement : TextLevelElementPrototype!("b"){
	mixin(ElementConstructorTemplate!());
}

class UElement : TextLevelElementPrototype!("u"){
	mixin(ElementConstructorTemplate!());
}

class MarkElement : TextLevelElementPrototype!("mark"){
	mixin(ElementConstructorTemplate!());
}

class RubyElement : TextLevelElementPrototype!("ruby"){
	mixin(ElementConstructorTemplate!());
}

class RbElement : TextLevelElementPrototype!("rb"){
	mixin(ElementConstructorTemplate!());
}

class RtElement : TextLevelElementPrototype!("rt"){
	mixin(ElementConstructorTemplate!());
}

class RtcElement : TextLevelElementPrototype!("rtc"){
	mixin(ElementConstructorTemplate!());
}

class RpElement : TextLevelElementPrototype!("rp"){
	mixin(ElementConstructorTemplate!());
}

class BdiElement : TextLevelElementPrototype!("bdi"){
	mixin(ElementConstructorTemplate!());
}

class BdoElement : TextLevelElementPrototype!("bdo"){
	mixin(ElementConstructorTemplate!());
}

class SpanElement : TextLevelElementPrototype!("span"){
	mixin(ElementConstructorTemplate!());
}

class BrElement : TextLevelElementPrototype!("br"){
	mixin(ElementConstructorTemplate!());
}

class WbrElement : TextLevelElementPrototype!("wbr"){
	mixin(ElementConstructorTemplate!());
}
