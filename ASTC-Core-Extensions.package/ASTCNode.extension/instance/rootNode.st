*ASTC-Core-Extensions
rootNode
	^ parent ifNil: [ self ] ifNotNil: [ :p | p rootNode ]