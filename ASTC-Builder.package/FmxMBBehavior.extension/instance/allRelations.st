*ASTC-Builder
allRelations
	| allRelations |
	allRelations := OrderedCollection new.
	self classGeneralization ifNotNil:[ :aGeneralization | allRelations addAll: aGeneralization allRelations ].
	allRelations addAll: relations.
	^ allRelations