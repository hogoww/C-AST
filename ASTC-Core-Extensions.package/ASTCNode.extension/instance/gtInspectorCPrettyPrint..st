*ASTC-Core-Extensions
gtInspectorCPrettyPrint: composite 
	<gtInspectorPresentationOrder: 2>
	^ composite pharoMethod
		title: [ 'AST C default pretty print ' translated ];
			display: [ 
				self prettyPrintUsing: FAPrettyPrint new.
				]
			