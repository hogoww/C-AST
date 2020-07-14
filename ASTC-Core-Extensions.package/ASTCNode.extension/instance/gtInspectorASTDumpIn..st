*ASTC-Core-Extensions
gtInspectorASTDumpIn: composite 
	<gtInspectorPresentationOrder: 1>
	^ composite pharoMethod
		title: [ 'AST Dump' translated ];
			display: [ 
				self astDump.
				]