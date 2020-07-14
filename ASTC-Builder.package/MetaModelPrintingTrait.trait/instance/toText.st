printing
toText
	"Shortcut to use the FmxMB PrintVisitor, which explore the metamodel and print it on the Transcript."
	| visitor visitableBuilder |
	visitor:= FmxMBPrintVisitor new.
	visitableBuilder:=self class builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.