*ASTC-Core-Extensions
fileNamed: aString
	^ cFiles detect: [ :aFile | aFile fileName = aString ]