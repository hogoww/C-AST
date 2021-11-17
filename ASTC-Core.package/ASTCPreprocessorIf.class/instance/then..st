accessing
then: someNodes

	someNodes do: [ :each | each parent: self ].
	then := someNodes