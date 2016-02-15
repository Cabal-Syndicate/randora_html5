module html5.elements.form;

import html5;

class FormElementPrototype(string tag_name = "") : Html5Element!(tag_name){
	mixin(ElementConstructorTemplate!());
}

class FormElement : FormElementPrototype!("form"){
	mixin(ElementConstructorTemplate!());
}

class LabelElement : FormElementPrototype!("label"){
	mixin(ElementConstructorTemplate!());
}

class InputElement : FormElementPrototype!("input"){
	mixin(ElementConstructorTemplate!());
}

class ButtonElement : FormElementPrototype!("button"){
	mixin(ElementConstructorTemplate!());
}

class SelectElement : FormElementPrototype!("select"){
	mixin(ElementConstructorTemplate!());
}

class DatalistElement : FormElementPrototype!("datalist"){
	mixin(ElementConstructorTemplate!());
}

class OptgroupElement : FormElementPrototype!("optgroup"){
	mixin(ElementConstructorTemplate!());
}

class OptionElement : FormElementPrototype!("option"){
	mixin(ElementConstructorTemplate!());
}

class TextareaElement : FormElementPrototype!("textarea"){
	mixin(ElementConstructorTemplate!());
}

class KeygenElement : FormElementPrototype!("keygen"){
	mixin(ElementConstructorTemplate!());
}

class OutputElement : FormElementPrototype!("output"){
	mixin(ElementConstructorTemplate!());
}

class ProgressElement : FormElementPrototype!("progress"){
	mixin(ElementConstructorTemplate!());
}

class MeterElement : FormElementPrototype!("meter"){
	mixin(ElementConstructorTemplate!());
}

class FieldsetElement : FormElementPrototype!("fieldset"){
	mixin(ElementConstructorTemplate!());
}

class LegendElement : FormElementPrototype!("legend"){
	mixin(ElementConstructorTemplate!());
}
