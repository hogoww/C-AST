*ASTC-Core-Extensions
visitNode: anASTCNode
	self flag: #badFix. "avoid bad infinite loop in walker"
	^self.