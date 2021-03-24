finding
fileNamed: aString 
	^ cFiles detect: [ :aCFile | aCFile fileName = aString ]