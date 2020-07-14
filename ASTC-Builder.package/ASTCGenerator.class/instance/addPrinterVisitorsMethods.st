generation-visitor-classes
addPrinterVisitorsMethods
	"Add necessary methods for PrinterVisitor : #initialize / #printTabCount: / #stream / #toTranscript / #printOn:"
	| method 
		stream currentDepth | "instance variables of printerVisitor"
		
	method := 'initialize' asMethodWithBody: 
		[ stream := String new writeStream.
			currentDepth:=0 ].
	printerVisitorClass compile: method asString classified: 'initialization'.
	
	method := 'printTabCount:' asMethodWithBody: 
		[:aNumber| aNumber timesRepeat:[ stream tab] ].
	printerVisitorClass compile: method asString classified: 'printing'.
	
	method := 'stream' asMethodWithBody: 
		[ ^ stream ].
	printerVisitorClass compile: method asString classified: 'accessing'.

	method := 'printOn:' asMethodWithBody: [:aStream| aStream << stream contents ].
	printerVisitorClass compile: method asString classified: 'printing'.
	
	method := 'toTranscript' asMethodWithBody: 
	[ Transcript show:self ; cr ].
	printerVisitorClass compile: method asString classified: 'printing'.
	