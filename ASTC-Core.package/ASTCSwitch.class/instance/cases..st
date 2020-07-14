accessing
cases: someSwitchCases
	someSwitchCases do: [ :each | each parent: self ].
	cases := someSwitchCases