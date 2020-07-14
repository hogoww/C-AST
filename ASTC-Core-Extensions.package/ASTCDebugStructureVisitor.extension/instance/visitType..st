*ASTC-Core-Extensions
visitType: anASTCType
	self visitNode: anASTCType.

	self assert: anASTCType type isTypeConstraint.

	super visitType: anASTCType