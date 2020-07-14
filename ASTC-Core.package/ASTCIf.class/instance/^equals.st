testing
= anIf
	super = anIf
		ifFalse: [ ^ false ].
	condition = anIf condition
		ifFalse: [ ^ false ].
	then = anIf then
		ifFalse: [ ^ false ].
	else = anIf else
		ifFalse: [ ^ false ].
	^ true