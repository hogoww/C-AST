*ASTC-Core-Extensions
visitPreprocessorInclude: aPreprocessorInclude
	"creates a recursive link, therefore, we want to avoid it."
	
	"aPreprocessorInclude cFile
		ifNotNil: [ :aCFile | aCFile acceptVisitor: self ]"