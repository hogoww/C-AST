accessing
cFiles: someCFiles

	someCFiles do: [ :each | each parent: self ].
	cFiles := someCFiles