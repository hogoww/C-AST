*ASTC-Core-Extensions
addStatement: aStatement
  aStatement isEmptyStatement ifTrue: [ ^ true ].
  "enable transformation of a message into a collection of statement rather than only one.
   not sure it'll be good enough."
  aStatement isBlock 
    ifTrue: [ 
	   self addStatements: aStatement.
	 ]
    ifFalse:[	
       aStatement parent: self.
       statements add: aStatement.
    ].
	^ true