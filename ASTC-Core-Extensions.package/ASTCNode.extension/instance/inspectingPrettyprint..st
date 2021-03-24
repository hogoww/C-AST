*ASTC-Core-Extensions
inspectingPrettyprint: aBuilder
	<inspectorPresentationOrder: 1 title: 'Pretty print'> 

	^ aBuilder newText
		text: 	(self prettyPrintUsing: FAPrettyPrint new) contents;
		yourself