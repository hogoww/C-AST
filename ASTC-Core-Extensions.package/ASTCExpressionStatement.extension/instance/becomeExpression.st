*ASTC-Core-Extensions
becomeExpression
	"protocol = converting"
	expression := self expression.
	expression 
		parent: parent;
		pharoNode: pharoNode.
	self becomeForward: expression
		