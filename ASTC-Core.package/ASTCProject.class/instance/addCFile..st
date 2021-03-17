accessing
addCFile: aCFile
	aCFile parent: self.
	cFiles add: aCFile.
	^ true