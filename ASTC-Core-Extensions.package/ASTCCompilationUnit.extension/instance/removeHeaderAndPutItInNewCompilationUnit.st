*ASTC-Core-Extensions
removeHeaderAndPutItInNewCompilationUnit
	| headerCu |
	"puts things that belong in the header, and remove them from myself"
	headerCu := self class new.
	
	headerCu includes: includes.
	includes := OrderedCollection new.
	
	headerCu defines: defines.
	defines := OrderedCollection new.
	
	headerCu structTypes: structTypes.
	structTypes := OrderedCollection new.
	
	headerCu variableDeclarations: variableDeclarations.
	variableDeclarations := OrderedCollection new.
	
	