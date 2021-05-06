*ASTC-Core-Extensions
addSupportCFile
	cFiles := self gatherSupportFiles select: [ :aCFile | aCFile needToBeGenerated ].