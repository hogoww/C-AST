actions
generate
	"Warning signal: (String streamContents:[:s| s << 'You''re about to delete everything in ' << packageName << '. Make sure you saved everything depending on it (extensions, class references,  [...]) .' ])."
		
	self preGen.	
	builder classes do:[:aFMXClass| self generateClass: aFMXClass ].
	self postGen.
	
	"reload packages that depends on the generated code"
	self reloadExtentions.