accessing
addParameter: aParameter
	aParameter parent: self.
	parameters add: aParameter.
	^ true