import std.stdio;
import html5;

import std.typecons;

void main(){}

unittest{
	//Check Elements Which Can Not Be Empty
	SmallElement small = new SmallElement();
	assert(small.toString() == "<small></small>");

	/+
	DivElement div = new DivElement();
	assert(div.toString() == "<div></div>");
	+/
}

unittest{
	//Check Elements Which Can Be Empty
	MetaElement meta = new MetaElement();
	assert(meta.toString() == "<meta />");
}

unittest{
	//Check Embedded elements
	SmallElement small = new SmallElement(
		[
			new SmallElement()
		]
	);
	assert(small.toString() == "<small><small></small></small>");
}

unittest{
	//Check Embedded Elements
	SmallElement small = new SmallElement();
	small ~= new SmallElement();

	assert(small.toString() == "<small><small></small></small>");
}

unittest{
	SmallElement small = new SmallElement(
		Attributes(
			"test_id"
		),
		""
	);
	small.toString().writeln;
	small.id.writeln;
	assert(small.id == "test_id");
	assert(small.toString() == "<small id=\"test_id\"></small>");
}