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
	";
}

template AttributeTemplate(string var_name){
	static const char[] AttributeTemplate = "
	string _"~var_name~" = \"\";
	typeof(this) "~var_name~"(string value = \"\"){
		this.tag.attr[\""~var_name~"\"] = value;
		return this;
	}
	";
}

class Html5Element(string tag_name = "") : Element{
	bool[string] _classes = null;
	
	@property{
		//Global Attributes
		typeof(this) id(string value){
			this.tag.attr["id"] = value;
			return this;
		}
		//title
		//lang
		//translate
		//dir
		//class
		//style
		//data-
	}

	@property{
		mixin(AttributeTemplate!("onabort"));
		mixin(AttributeTemplate!("onblur"));
		mixin(AttributeTemplate!("oncancel"));
		mixin(AttributeTemplate!("oncanplay"));
		mixin(AttributeTemplate!("oncanplaythrough"));
		mixin(AttributeTemplate!("onchange"));
		mixin(AttributeTemplate!("onclick"));
		mixin(AttributeTemplate!("oncuechange"));
		mixin(AttributeTemplate!("ondblclick"));
		mixin(AttributeTemplate!("ondurationchange"));
		mixin(AttributeTemplate!("onemptied"));
		mixin(AttributeTemplate!("onended"));
		mixin(AttributeTemplate!("onerror"));
		mixin(AttributeTemplate!("onfocus"));
		mixin(AttributeTemplate!("oninput"));
		mixin(AttributeTemplate!("oninvalid"));
		mixin(AttributeTemplate!("onkeydown"));
		mixin(AttributeTemplate!("onkeypress"));
		mixin(AttributeTemplate!("onkeyup"));
		mixin(AttributeTemplate!("onload"));
		mixin(AttributeTemplate!("onloadeddata"));
		mixin(AttributeTemplate!("onloadedmetadata"));
		mixin(AttributeTemplate!("onloadstart"));
		mixin(AttributeTemplate!("onmousedown"));
		mixin(AttributeTemplate!("onmouseenter"));
		mixin(AttributeTemplate!("onmouseleave"));
		mixin(AttributeTemplate!("onmousemove"));
		mixin(AttributeTemplate!("onmouseout"));
		mixin(AttributeTemplate!("onmouseover"));
		mixin(AttributeTemplate!("onmouseup"));
		mixin(AttributeTemplate!("onmousewheel"));
		mixin(AttributeTemplate!("onpause"));
		mixin(AttributeTemplate!("onplay"));
		mixin(AttributeTemplate!("onplaying"));
		mixin(AttributeTemplate!("onprogress"));
		mixin(AttributeTemplate!("onratechange"));
		mixin(AttributeTemplate!("onreset"));
		mixin(AttributeTemplate!("onresize"));
		mixin(AttributeTemplate!("onscroll"));
		mixin(AttributeTemplate!("onseeked"));
		mixin(AttributeTemplate!("onseeking"));
		mixin(AttributeTemplate!("onselect"));
		mixin(AttributeTemplate!("onshow"));
		mixin(AttributeTemplate!("onstalled"));
		mixin(AttributeTemplate!("onsubmit"));
		mixin(AttributeTemplate!("onsuspend"));
		mixin(AttributeTemplate!("ontimeupdate"));
		mixin(AttributeTemplate!("ontoggle"));
		mixin(AttributeTemplate!("onvolumechange"));
		mixin(AttributeTemplate!("onwaiting"));
	}
	
	this(string value = ""){
		super(new Html5Tag!(tag_name)());
		this ~= new Text(value); //TODO: Temporary fix. Firefox doesn't like it when some elements are empty;
	}

	this(Element element){
		this();
		this ~= element;
	}

	this(Element[] elements){
		this();
		foreach(int i, Element element; elements){
			this ~= element;
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