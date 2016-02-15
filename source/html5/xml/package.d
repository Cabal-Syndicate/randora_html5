module html5.xml;

package import html5.xml.xml;
package import html5.xml.cdata;
package import html5.xml.comment;
package import html5.xml.document;
package import html5.xml.document_parser;
package import html5.xml.element;
package import html5.xml.element_parser;
package import html5.xml.exception;
package import html5.xml.item;
package import html5.xml.processing_instruction;
package import html5.xml.tag;
package import html5.xml.text;
package import html5.xml.xml_instruction;

package import std.algorithm : count, startsWith;
package import std.array;
package import std.ascii;
package import std.string;
package import std.encoding;
