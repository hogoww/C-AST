*ASTC-Core-Extensions
astDump
	| visitor |
	visitor:=ASTCPrinterVisitor new.
	self acceptVisitor: visitor.
	^visitor.