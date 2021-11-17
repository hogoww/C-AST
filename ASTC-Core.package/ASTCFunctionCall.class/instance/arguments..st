accessing
arguments: someExpressions

	someExpressions do: [ :each | each parent: self ].
	arguments := someExpressions