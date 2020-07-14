accessing
else: someNodes
	someNodes do: [ :each | each parent: self ].
	else := someNodes