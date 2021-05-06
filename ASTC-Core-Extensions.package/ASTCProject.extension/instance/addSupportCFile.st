*ASTC-Core-Extensions
addSupportCFile
	cFiles addAll: (self gatherSupportFiles select: [ :aCFile | aCFile needToBeGenerated ]).
	cFiles := cFiles asSet asOrderedCollection.