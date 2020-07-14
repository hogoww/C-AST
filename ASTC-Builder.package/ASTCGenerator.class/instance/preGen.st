actions
preGen
	"recreate a clean package, and generate the classes"
	self clean.
	self makePackage.
	self generateVisitorsClasses.
