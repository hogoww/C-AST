visiting
visitPreprocessorIf: aPreprocessorIf
	super visitPreprocessorIf: aPreprocessorIf.
	aPreprocessorIf then
		ifNotNil:
			[ :then | then do: [ :aThen | self assert: aThen isNode ] ].
	aPreprocessorIf else
		ifNotNil:
			[ :else | else do: [ :anElse | self assert: anElse isNode ] ].
	aPreprocessorIf condition
		ifNotNil: [ :aCondition | self assert: aCondition isExpression ]