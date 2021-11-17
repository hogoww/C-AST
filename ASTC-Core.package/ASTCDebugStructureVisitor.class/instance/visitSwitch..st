visiting
visitSwitch: aSwitch

	super visitSwitch: aSwitch.
	aSwitch cases ifNotNil: [ :cases | 
		cases do: [ :aCases | self assert: aCases isSwitchCase ] ].
	aSwitch expression ifNotNil: [ :anExpression | 
		self assert: anExpression isExpression ].
	aSwitch default ifNotNil: [ :aDefault | 
		self assert: aDefault isStatement ]