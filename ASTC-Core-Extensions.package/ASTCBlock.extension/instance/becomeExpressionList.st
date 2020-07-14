*ASTC-Core-Extensions
becomeExpressionList
	"protocol: converting"
	| asExpressionList |
	asExpressionList := ASTCExpressionList new.
	self declarations ifNotEmpty: [ self halt." should not happen in Slang." ].
	self statements do:[:aStatement| asExpressionList addExpression: aStatement ].
	asExpressionList 
		parent: parent;
		pharoNode: pharoNode.
	self becomeForward: asExpressionList