visiting
visitNode: aNode
	super visitNode: aNode.
	aNode parent ifNotNil: [ :aParent | self assert: aParent isNode ]