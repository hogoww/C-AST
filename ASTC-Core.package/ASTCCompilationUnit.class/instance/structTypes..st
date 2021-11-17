accessing
structTypes: someStructureDefinitions

	someStructureDefinitions do: [ :each | each parent: self ].
	structTypes := someStructureDefinitions