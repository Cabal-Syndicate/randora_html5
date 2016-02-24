/+
class Asdf : DivElement{
	/+
	Div items ~= new Div([
		new html5.P(),
		new html5.Div(),
		new html5.Div([
			new html5.Div([
				new html5.P(),
				new bootstrap.Carosel(),
				new Asdf()
			])
		])
	]);
	+/
	this(){
		super();
		this ~= new Text("Asdf");
		//this.add_class("asdf");
	}
}

class Qwerty : DivElement{
	this(){
		super();
		this ~= new Text("Qwerty");
		this.add_class("qwerty");
	}
}

class Main : DivElement{
	DivElement asdf = new DivElement([
		new PElement(),
		new DivElement(),
		new DivElement([
			new DivElement([
				new PElement(),
				new Asdf()
			])
		])
	]);

	this(){
		super();
		this.id = "main_id";
		this.add_class("main")
			.add_class("class_0")
			.add_class("class_1")
			.add_class("class_b")
			.add_class(["c0", "c1", "c2"])
			.remove_class("class_0");
		
		this.asdf ~= new DivElement("asdfasfasdfasfasfasfasfasdfasdf");
		PElement p = new PElement("qweqwerqwerwerqwe");

		this ~= this.asdf;
		this ~= p;
		//this ~= new Asdf();
		this ~= new Qwerty();
		this ~= new PElement("Some P text.");
	}
}

void main(){
	Main m = new Main();
	writeln(join(m.pretty(3), "\n"));
	/+
	NElement n = new NElement(
		id = "n_id",
		classes = ["n0", "n1", "n2"],
		inner = new Main()
	);
	+/
}
+/