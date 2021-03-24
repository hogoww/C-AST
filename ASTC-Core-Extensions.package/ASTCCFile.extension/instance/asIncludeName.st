*ASTC-Core-Extensions
asIncludeName
	^ String streamContents: [ :s | s << '"' << fileName << '.h"' ]