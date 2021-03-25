*ASTC-Core-Extensions
asIncludeName
	^ String streamContents: [ :s |
		isStandard
			ifTrue:[ s << '<' << fileName << '.h>' ]
			ifFalse:[ s << '"' << fileName << '.h"' ]]