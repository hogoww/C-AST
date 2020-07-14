accessing
addDefine: aDefine
	aDefine parent: self.
	defines add: aDefine.
	^ true