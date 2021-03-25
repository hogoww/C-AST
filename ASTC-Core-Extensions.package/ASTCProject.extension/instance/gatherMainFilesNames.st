*ASTC-Core-Extensions
gatherMainFilesNames
	^ cFiles select: [ :aCFile | aCFile hasMainFunction ] thenCollect: [ :aCFile | aCFile fileName ] 