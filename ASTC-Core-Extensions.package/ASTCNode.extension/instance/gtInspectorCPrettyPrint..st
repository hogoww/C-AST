*ASTC-Core-Extensions
gtInspectorCPrettyPrint: composite 
	<gtInspectorPresentationOrder: 2>
	^ composite pharoMethod
		title: [ 'AST C pretty print' translated ];
			display: [ 
				self prettyPrint.
				]
			