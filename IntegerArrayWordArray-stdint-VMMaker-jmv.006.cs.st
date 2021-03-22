'From Cuis 5.0 [latest update: #4538] on 22 March 2021 at 4:00:39 pm'!

!SmartSyntaxPluginCodeGenerator methodsFor: 'coercing' stamp: 'jmv 3/18/2021 09:56:07'!
ccgLoad: aBlock expr: aString asint32PtrFrom: anInteger andThen: valBlock
	"Answer a codestring for integer pointer to first indexable field of object (without validating side-effect unless specified in valBlock), as described in comment to ccgLoad:expr:asRawOopFrom:"

	^(valBlock value: anInteger), '.',
	 (aBlock value: (String streamContents: [:aStream | aStream
		nextPutAll: 'self cCoerce: (interpreterProxy firstIndexableField:';
		crtab: 4;
		nextPutAll: '(interpreterProxy stackValue:';
		nextPutAll: anInteger asString;
		nextPutAll:	'))';
		crtab: 3;
		nextPutAll: 'to: ''int32_t *''']))! !

!SmartSyntaxPluginCodeGenerator methodsFor: 'coercing' stamp: 'jmv 3/8/2021 11:00:21'!
ccgLoad: aBlock expr: aString asuint32PtrFrom: anInteger andThen: valBlock
	"Answer a codestring for integer pointer to first indexable field of object (without validating side-effect unless specified in valBlock), as described in comment to ccgLoad:expr:asRawOopFrom:"

	^(valBlock value: anInteger), '.',
	 (aBlock value: (String streamContents: [:aStream | aStream
		nextPutAll: 'self cCoerce: (interpreterProxy firstIndexableField:';
		crtab: 4;
		nextPutAll: '(interpreterProxy stackValue:';
		nextPutAll: anInteger asString;
		nextPutAll:	'))';
		crtab: 3;
		nextPutAll: 'to: ''uint32_t *''']))! !


!IntegerArray class methodsFor: '*VMMaker-plugin generation' stamp: 'jmv 3/18/2021 09:56:12'!
ccg: cg prolog: aBlock expr: aString index: anInteger

	^cg 
		ccgLoad: aBlock 
		expr: aString 
		asint32PtrFrom: anInteger
		andThen: (cg ccgValBlock: 'isWords')! !

!IntegerArray class methodsFor: '*VMMaker-plugin generation' stamp: 'jmv 3/17/2021 15:52:02'!
ccgDeclareCForVar: aSymbolOrString
	"We need to start using stdint.h !!!!!!!!!!!!"
"
	^'int *', aSymbolOrString
"
	^'int32_t *', aSymbolOrString! !


!WordArray class methodsFor: '*VMMaker-plugin generation' stamp: 'jmv 3/8/2021 10:59:03'!
ccg: cg prolog: aBlock expr: aString index: anInteger

	^cg 
		ccgLoad: aBlock 
		expr: aString 
		asuint32PtrFrom: anInteger
		andThen: (cg ccgValBlock: 'isWords')! !

!WordArray class methodsFor: '*VMMaker-plugin generation' stamp: 'jmv 3/8/2021 10:40:08'!
ccgDeclareCForVar: aSymbolOrString
	"Address of an unsigned 32 bit value, regardless of Smalltalk wordSize"
	"We need to start using stdint.h !!!!!!!!!!!!"
"
	^'unsigned *', aSymbolOrString
"
	^'uint32_t *', aSymbolOrString! !

