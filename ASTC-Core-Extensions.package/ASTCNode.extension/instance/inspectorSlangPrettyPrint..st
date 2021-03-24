*ASTC-Core-Extensions
inspectorSlangPrettyPrint: aBuilder
	<inspectorPresentationOrder: 2 title: 'Slang pretty print'> 

	^ aBuilder newText
		text: 	(self prettyPrintUsing: MASlangPrettyPrinter new) stream contents;
		yourself
			