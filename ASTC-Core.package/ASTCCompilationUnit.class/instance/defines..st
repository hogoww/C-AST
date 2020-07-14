accessing
defines: somePreprocessorDefines
	somePreprocessorDefines do: [ :each | each parent: self ].
	defines := somePreprocessorDefines