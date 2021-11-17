visiting
visitPreprocessorIf: aPreprocessorIf

	aPreprocessorIf then ifNotNil: [ :then | 
		then do: [ :aThen | aThen acceptVisitor: self ] ].
	aPreprocessorIf else ifNotNil: [ :else | 
		else do: [ :anElse | anElse acceptVisitor: self ] ].
	aPreprocessorIf condition ifNotNil: [ :aCondition | 
		aCondition acceptVisitor: self ]