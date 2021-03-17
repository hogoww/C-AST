accessing
literals: someLiterals
	someLiterals do: [ :each | each parent: self ].
	literals := someLiterals