printing
toUML
	"Shortcut to use the FmxMB PlantUML visitor, which explore the metamodel and write in the 'content' stream an output understandable by the program 'PlantUML', to show a graph representing it."
	| visitor visitableBuilder |
	visitor:= FmxMBPlantTextVisitor new.
	visitableBuilder:=self class builderWithDefinitions.
	visitableBuilder acceptVisitor: visitor.
	^visitor contents.