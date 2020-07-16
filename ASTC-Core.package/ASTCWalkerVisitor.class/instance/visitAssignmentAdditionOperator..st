visiting
visitAssignmentAdditionOperator: anAssignmentAdditionOperator
	anAssignmentAdditionOperator leftOperand
		ifNotNil: [ :aLeftOperand | aLeftOperand acceptVisitor: self ].
	anAssignmentAdditionOperator rightOperand
		ifNotNil: [ :aRightOperand | aRightOperand acceptVisitor: self ]