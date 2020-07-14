generation-system
generateClass: aFMXClass
	| superclass tagName |
	debug
		ifTrue: [ (aFMXClass fullName asString , ' --|> '
				,
					(aFMXClass classGeneralization
						ifNotNil: [ :aCg | aCg fullName ]
						ifNil: [ 'Object' ])) logCr ].
	superclass := aFMXClass classGeneralization
		ifNil: Object
		ifNotNil: [ :aFMXSuperClass | aFMXSuperClass realClass ].	"we get a symbol of the Superclass"
	tagName := '-Nodes'.
	
	"We put Operators in a different tag, to avoid noise."
	(aFMXClass allClassGeneralizations anySatisfy:[ :aClassGen| aClassGen name = #Operator  ] )
		ifTrue: [ tagName := tagName , '-Operators' ].
		
	superclass
		subclass: aFMXClass fullName
		instanceVariableNames: ''
		classVariableNames: ''
		package: packageName , tagName.
	self generateStateFor: aFMXClass.
	self generateMethodsFor: aFMXClass.
	self generateVisitsFor: aFMXClass