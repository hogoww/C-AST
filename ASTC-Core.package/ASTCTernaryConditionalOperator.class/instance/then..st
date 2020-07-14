accessing
then: aThen
	aThen ifNotNil: [ aThen parent: self ].
	then := aThen