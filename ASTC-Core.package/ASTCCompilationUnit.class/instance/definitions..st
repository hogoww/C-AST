accessing
definitions: someDefinitions

	someDefinitions do: [ :each | each parent: self ].
	definitions := someDefinitions