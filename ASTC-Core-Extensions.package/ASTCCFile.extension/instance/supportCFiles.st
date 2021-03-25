*ASTC-Core-Extensions
supportCFiles
	^ (implementation includes collect: [ :anInclude | anInclude cFile ]) 
	,
	(header ifNotNil: [ header includes collect: [ :anInclude | anInclude cFile ]] ifNil: #())