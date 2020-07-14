testing
= aSwitch
	super = aSwitch
		ifFalse: [ ^ false ].
	expression = aSwitch expression
		ifFalse: [ ^ false ].
	cases = aSwitch cases
		ifFalse: [ ^ false ].
	default = aSwitch default
		ifFalse: [ ^ false ].
	^ true