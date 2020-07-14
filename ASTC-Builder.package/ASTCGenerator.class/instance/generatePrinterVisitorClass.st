generation-visitor-classes
generatePrinterVisitorClass
	"Printer --|> Walker"
	printerVisitorClass  :=  walkerVisitorClass subclass: (self fullNameOf: #PrinterVisitor)
		instanceVariableNames: 'currentDepth stream'
		classVariableNames: ''
		package: (self makePackageNameWith: #visitors).
	self addPrinterVisitorsMethods.