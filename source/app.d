import std.stdio;
import html5;

import std.typecons;

void main(){
	DivElement h = new DivElement(
		Attributes(
			"id_asdf",
			["class_0", "class_1"],
			["onclick" : "asdfasdf"]
		),
		[new DivElement()]
	);
	
	writeln(join(h.pretty(3), "\n"));
}

