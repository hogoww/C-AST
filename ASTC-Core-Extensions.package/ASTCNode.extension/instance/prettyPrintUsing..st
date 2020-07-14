*ASTC-Core-Extensions
prettyPrintUsing: aPrettyPrinter
	self acceptVisitor: aPrettyPrinter.
	^ aPrettyPrinter stream contents