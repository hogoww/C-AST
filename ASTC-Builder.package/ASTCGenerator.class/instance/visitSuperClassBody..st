generation-visit
visitSuperClassBody: aFMXClass

	| superclassName superMethodSelector |
	superclassName := aFMXClass classGeneralization 
		ifNotNil:[:aSuperClass| aSuperClass name] 
		ifNil:[ ^ [:anInstance | ] ]."No need to override"
	superMethodSelector := superclassName asVisitClassSelector.
	
	^ [ :anInstance | ^ self superMethodSelector: {anInstance} ] asPCBlock