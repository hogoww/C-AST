actions
reloadExtentions
	| icebergRepo |
	
	icebergRepo := Iceberg repositoryForPackage: self class package.

	icebergRepo loadedPackages do:[:aPackage| 
		(aPackage name = self class package name or: [aPackage name = ASTCBuilder packageName])
			ifFalse: [ aPackage reload ]]