removing
removePackageNamed: aString
	"remove the package named aString from the system"
	(aString asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].