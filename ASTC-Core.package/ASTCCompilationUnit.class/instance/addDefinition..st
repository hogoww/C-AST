accessing
addDefinition: aDefinition
	aDefinition parent: self.
	definitions add: aDefinition.
	^ true