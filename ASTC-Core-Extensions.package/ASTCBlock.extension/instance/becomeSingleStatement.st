*ASTC-Core-Extensions
becomeSingleStatement
	"protocol = converting"
	| expression |
	expression := statements first.
	expression 
		parent: parent;
		pharoNode: pharoNode.
	self becomeForward: expression
		