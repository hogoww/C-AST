accessing
expressions: someExpressions
	someExpressions do: [ :each | each parent: self ].
	expressions := someExpressions