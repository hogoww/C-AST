accessing
functionDeclarations: someFunctionDeclarations
	someFunctionDeclarations do: [ :each | each parent: self ].
	functionDeclarations := someFunctionDeclarations