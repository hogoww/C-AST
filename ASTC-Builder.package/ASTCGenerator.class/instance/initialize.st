initialization
initialize
	| builderClass |
	self flag:#ModularityNeeded. "ASTCBuilder shouldn't be hardcoded, but an argument. Stays that way for developpement speed."
	self flag:#todo. "Modularity on collections used"
	self flag:#toRemove. "remove the Transcript clear, it's just for development."
	
	super initialize.
	
	Transcript clear.
	debug := false.
		
	self initializeDefault.
	builderClass:=ASTCBuilder.
	
	builder:=builderClass builderWithDefinitions.	
	prefix:= builderClass prefix.
	packageName:=builderClass packageName.