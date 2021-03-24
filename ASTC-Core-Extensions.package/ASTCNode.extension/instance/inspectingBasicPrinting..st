*ASTC-Core-Extensions
inspectingBasicPrinting: aBuilder
	<inspectorPresentationOrder: 0 title: 'AST Dump'> 

	^ aBuilder newText
		text: self astDump stream contents;
		yourself