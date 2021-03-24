*ASTC-Core-Extensions
generateOnDisk
	cFiles do: [ :aCFile | aCFile generateOnDiskPath: self path ].
	self generateMakefile.