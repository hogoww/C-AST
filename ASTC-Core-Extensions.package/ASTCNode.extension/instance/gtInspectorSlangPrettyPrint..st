*ASTC-Core-Extensions
gtInspectorSlangPrettyPrint: composite 
	<gtInspectorPresentationOrder: 3>
	^ composite pharoMethod
		title: [ 'AST Slang pretty print' translated ];
			display: [ 
				self prettyPrintUsing: MASlangPrettyPrinter new
				]
			