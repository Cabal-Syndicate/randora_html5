module html5.elements.html5;

import html5;

class Html5Tag(string tag_name = "") : Tag{
	this(){
		super(tag_name);
	}
}

template ElementConstructorTemplate(){
	static const char[] ElementConstructorTemplate = "
	this(string value = \"\"){ super(value); }

	this(Element p){
		super(p);
	}

	this(Element[] p){
		super(p);
	}
	
	this(Attributes attributes, Element[] p = null){
		super(p);
		
		this.id = attributes.id;
		this.add_class(attributes.classes);
		foreach(string s, string attribute; attributes.attributes){
			this.tag.attr[s] = attribute;
		}
	}

	this(Attributes attributes, string value = \"\"){
		super(value);
		
		this.id = attributes.id;
		this.add_class(attributes.classes);
		foreach(string s, string attribute; attributes.attributes){
			this.tag.attr[s] = attribute;
		}
	}
	";
}

struct Attributes{
	string id = "";
	string[] classes = null;
	string[string] attributes = null;
}

template AttributeTemplate(T, string var_name){
	static const char[] AttributeTemplate = "
	@property{
		string _"~var_name~" = \"\";
		typeof(this) "~var_name~"(string value = \"\"){
			this.tag.attr[\""~var_name~"\"] = value;
			return this;
		}
	}
	";
}

class Html5Element(string tag_name = "") : Element{
	bool can_be_empty = false;
	bool[string] _classes = null;
	
	mixin(AttributeTemplate!(typeof(this), "id"));
	mixin(AttributeTemplate!(typeof(this), "title"));
	mixin(AttributeTemplate!(typeof(this), "lang"));
	mixin(AttributeTemplate!(typeof(this), "translate"));
	mixin(AttributeTemplate!(typeof(this), "dir"));
	//mixin(AttributeTemplate!(typeof(this), "class"));
	mixin(AttributeTemplate!(typeof(this), "style"));
	//mixin(AttributeTemplate!(typeof(this), "data-"));
	mixin(AttributeTemplate!(typeof(this), "onabort"));
	mixin(AttributeTemplate!(typeof(this), "onblur"));
	mixin(AttributeTemplate!(typeof(this), "oncancel"));
	mixin(AttributeTemplate!(typeof(this), "oncanplay"));
	mixin(AttributeTemplate!(typeof(this), "oncanplaythrough"));
	mixin(AttributeTemplate!(typeof(this), "onchange"));
	mixin(AttributeTemplate!(typeof(this), "onclick"));
	mixin(AttributeTemplate!(typeof(this), "oncuechange"));
	mixin(AttributeTemplate!(typeof(this), "ondblclick"));
	mixin(AttributeTemplate!(typeof(this), "ondurationchange"));
	mixin(AttributeTemplate!(typeof(this), "onemptied"));
	mixin(AttributeTemplate!(typeof(this), "onended"));
	mixin(AttributeTemplate!(typeof(this), "onerror"));
	mixin(AttributeTemplate!(typeof(this), "onfocus"));
	mixin(AttributeTemplate!(typeof(this), "oninput"));
	mixin(AttributeTemplate!(typeof(this), "oninvalid"));
	mixin(AttributeTemplate!(typeof(this), "onkeydown"));
	mixin(AttributeTemplate!(typeof(this), "onkeypress"));
	mixin(AttributeTemplate!(typeof(this), "onkeyup"));
	mixin(AttributeTemplate!(typeof(this), "onload"));
	mixin(AttributeTemplate!(typeof(this), "onloadeddata"));
	mixin(AttributeTemplate!(typeof(this), "onloadedmetadata"));
	mixin(AttributeTemplate!(typeof(this), "onloadstart"));
	mixin(AttributeTemplate!(typeof(this), "onmousedown"));
	mixin(AttributeTemplate!(typeof(this), "onmouseenter"));
	mixin(AttributeTemplate!(typeof(this), "onmouseleave"));
	mixin(AttributeTemplate!(typeof(this), "onmousemove"));
	mixin(AttributeTemplate!(typeof(this), "onmouseout"));
	mixin(AttributeTemplate!(typeof(this), "onmouseover"));
	mixin(AttributeTemplate!(typeof(this), "onmouseup"));
	mixin(AttributeTemplate!(typeof(this), "onmousewheel"));
	mixin(AttributeTemplate!(typeof(this), "onpause"));
	mixin(AttributeTemplate!(typeof(this), "onplay"));
	mixin(AttributeTemplate!(typeof(this), "onplaying"));
	mixin(AttributeTemplate!(typeof(this), "onprogress"));
	mixin(AttributeTemplate!(typeof(this), "onratechange"));
	mixin(AttributeTemplate!(typeof(this), "onreset"));
	mixin(AttributeTemplate!(typeof(this), "onresize"));
	mixin(AttributeTemplate!(typeof(this), "onscroll"));
	mixin(AttributeTemplate!(typeof(this), "onseeked"));
	mixin(AttributeTemplate!(typeof(this), "onseeking"));
	mixin(AttributeTemplate!(typeof(this), "onselect"));
	mixin(AttributeTemplate!(typeof(this), "onshow"));
	mixin(AttributeTemplate!(typeof(this), "onstalled"));
	mixin(AttributeTemplate!(typeof(this), "onsubmit"));
	mixin(AttributeTemplate!(typeof(this), "onsuspend"));
	mixin(AttributeTemplate!(typeof(this), "ontimeupdate"));
	mixin(AttributeTemplate!(typeof(this), "ontoggle"));
	mixin(AttributeTemplate!(typeof(this), "onvolumechange"));
	mixin(AttributeTemplate!(typeof(this), "onwaiting"));
	
	this(string value = ""){
		super(new Html5Tag!(tag_name)());
		if(can_be_empty){
			this ~= new Text(value); //TODO: Temporary fix. Firefox doesn't like it when some elements are empty;
		}
	}

	this(Element element){
		this();
		if(element !is null){
			this ~= element;
		}
	}

	this(Element[] elements){
		this();
		if(elements !is null){
			foreach(int i, Element element; elements){
				this ~= element;
			}
		}
	}

	typeof(this) add_class(string class_name, bool value = true){
		this._classes[class_name] = value;
		this.refresh_tag();
		return this;
	}

	typeof(this) add_class(string[] class_names){
		foreach(int key, string class_name; class_names){
			this.add_class(class_name);
		}
		return this;
	}

	typeof(this) remove_class(string class_name){
		if(class_name in this._classes){
			this._classes.remove(class_name);
		}
		this.refresh_tag();
		return this;
	}

	private void refresh_tag(){
		string c = "";
		foreach(string s, bool v; this._classes){
			c ~= s ~ " "; //TODO: This leaves a trailing " " at the end of the string, which is sloppy. Clean it up.
		}
		this.tag.attr["class"] = c;
	}

	void init(){}

	void reset(){
		this.elements = null;
		this.init();
	}
}