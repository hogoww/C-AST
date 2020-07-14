adding
addPackageNamed: aString
	"add aString as the name of a new package of the environement."
	RPackageOrganizer new registerPackageNamed: aString.