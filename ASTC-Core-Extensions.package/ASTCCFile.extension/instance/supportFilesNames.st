*ASTC-Core-Extensions
supportFilesNames
	^ (implementation includes collect: [ :anInclude | anInclude cFile implementationFileName]) 
	,
	(header ifNotNil: [ header includes collect: [ :anInclude | anInclude cFile implementationFileName ]] ifNil: #())