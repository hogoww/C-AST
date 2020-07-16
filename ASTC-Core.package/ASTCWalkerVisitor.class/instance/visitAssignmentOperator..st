visiting
visitAssignmentOperator: anAssignmentOperator
	anAssignmentOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAssignmentOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]