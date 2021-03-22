'From Cuis 5.0 [latest update: #4526] on 22 March 2021 at 8:06:40 pm'!
'Description '!
!provides: 'Compatibility-VMMaker' 1 4!
SystemOrganization addCategory: 'Compatibility-VMMaker'!


!classDefinition: #KlattResonatorIndices category: 'Compatibility-VMMaker'!
SharedPool subclass: #KlattResonatorIndices
	instanceVariableNames: ''
	classVariableNames: 'R1c R1vp R2c R2fp R2vp R3c R3fp R3vp R4c R4fp R4vp R5c R5fp R6c R6fp R7c R8c Rnpc Rnpp Rnz Rout Rtpc Rtpp Rtz'
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'KlattResonatorIndices class' category: 'Compatibility-VMMaker'!
KlattResonatorIndices class
	instanceVariableNames: ''!

!classDefinition: #ByteString category: 'Compatibility-VMMaker'!
String variableByteSubclass: #ByteString
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'ByteString class' category: 'Compatibility-VMMaker'!
ByteString class
	instanceVariableNames: ''!

!classDefinition: #MultiByteFileStream category: 'Compatibility-VMMaker'!
StandardFileStream subclass: #MultiByteFileStream
	instanceVariableNames: 'lineEndConvention'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'MultiByteFileStream class' category: 'Compatibility-VMMaker'!
MultiByteFileStream class
	instanceVariableNames: ''!

!classDefinition: #CrLfFileStream category: 'Compatibility-VMMaker'!
MultiByteFileStream subclass: #CrLfFileStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'CrLfFileStream class' category: 'Compatibility-VMMaker'!
CrLfFileStream class
	instanceVariableNames: ''!

!classDefinition: #InvalidDirectoryError category: 'Compatibility-VMMaker'!
Error subclass: #InvalidDirectoryError
	instanceVariableNames: 'pathName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'InvalidDirectoryError class' category: 'Compatibility-VMMaker'!
InvalidDirectoryError class
	instanceVariableNames: ''!

!classDefinition: #ProvideAnswerNotification category: 'Compatibility-VMMaker'!
Notification subclass: #ProvideAnswerNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'ProvideAnswerNotification class' category: 'Compatibility-VMMaker'!
ProvideAnswerNotification class
	instanceVariableNames: ''!

!classDefinition: #ClassTestCase category: 'Compatibility-VMMaker'!
TestCase subclass: #ClassTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'ClassTestCase class' category: 'Compatibility-VMMaker'!
ClassTestCase class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkImage category: 'Compatibility-VMMaker'!
Object subclass: #SmalltalkImage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'SmalltalkImage class' category: 'Compatibility-VMMaker'!
SmalltalkImage class
	instanceVariableNames: ''!

!classDefinition: #UnsupportedInCuis category: 'Compatibility-VMMaker'!
Object subclass: #UnsupportedInCuis
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'UnsupportedInCuis class' category: 'Compatibility-VMMaker'!
UnsupportedInCuis class
	instanceVariableNames: ''!

!classDefinition: #PackageOrganizer category: 'Compatibility-VMMaker'!
UnsupportedInCuis subclass: #PackageOrganizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'PackageOrganizer class' category: 'Compatibility-VMMaker'!
PackageOrganizer class
	instanceVariableNames: ''!

!classDefinition: #UIManager category: 'Compatibility-VMMaker'!
UnsupportedInCuis subclass: #UIManager
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'UIManager class' category: 'Compatibility-VMMaker'!
UIManager class
	instanceVariableNames: ''!


!MultiByteFileStream commentStamp: 'jmv 5/8/2015 15:03' prior: 0!
Not really a MultiByteXXX. Accept #lineEndConvention and honor it, on Write. On Read, do no conversions.!

!CrLfFileStream commentStamp: '<historical>' prior: 0!
Do line ending conversion on write. By default, write files with host platform convention.!

!KlattResonatorIndices class methodsFor: 'pool initialization' stamp: 'ar 5/18/2003 20:17'!
initialize
	"KlattResonatorIndices initialize"
	Rnpp := 1.
	Rtpp := 2.
	R1vp := 3.
	R2vp := 4.
	R3vp := 5.
	R4vp := 6.
	R2fp := 7.
	R3fp := 8.
	R4fp := 9.
	R5fp := 10.
	R6fp := 11.
	R1c := 12.
	R2c := 13.
	R3c := 14.
	R4c := 15.
	R5c := 16.
	R6c := 17.
	R7c := 18.
	R8c := 19.
	Rnpc := 20.
	Rnz := 21.
	Rtpc := 22.
	Rtz := 23.
	Rout := 24.! !

!KlattResonatorIndices class methodsFor: 'frame parameter data' stamp: 'dtl 11/15/2009 10:30'!
parameterData
	"This is a table describing the Klatt parameters. The columns are: parameter name, minimum value, maximum, parameter description, unit."
	^ #(
	"Excitation source (voice, aspiration and friction):"
		(f0 20 1000 'Fundamental frequency (hz)' hz)
		(flutter 0 1 'Amount of flutter' value)
		(jitter 0 1 'Amount of jitter' value)
		(shimmer 0 1 'Amount of shimmer' value)
		(diplophonia 0 1 'Amount of diplophonia' value)
		(voicing 0 80 'Amplitude of voicing' hz)
		(ro 0.01 1 'Relative duration of open phase of voicing waveform = Te/T0 (0.01 - 1)' value)
		(ra 0.01 0.2 'Relative duration of return phase of voicing waveform = Ta/T0 (0.01 - 1)' value)
		(rk 0.01 1 'Simmetry of the glottal pulse = (Te-Tp)/Tp (0.01 - 1)' value)
		(aspiration 0 80 'Amplitude of aspiration' dB)
		(friction 0 80 'Amplitude of friction' dB)
		(turbulence 0 80 'Amplitude of turbulence (in open glottal phase)' dB)

	"Formants frequencies and bandwidths:"	
		(f1 200 1300 'Frequency of 1st formant' hz)
		(b1 40 1000 'Bandwidth of 1st formant' hz)
		(df1 0 100 'Change in F1 during open portion of period' hz)
		(db1 0 400 'Change in B1 during open portion of period' hz)
		(f2 550 3000 'Frequency of 2nd formant' hz)
		(b2 40 1000 'Bandwidth of 2nd formant' hz)
		(f3 1200 4999 'Frequency of 3rd formant' hz)
		(b3 40 1000 'Bandwidth of 3rd formant' hz)
		(f4 1200 4999 'Frequency of 4th formant' hz)
		(b4 40 1000 'Bandwidth of 4th formant' hz)
		(f5 1200 4999 'Frequency of 5th formant' hz)
		(b5 40 1000 'Bandwidth of 5th formant' hz)
		(f6 1200 4999 'Frequency of 6th formant' hz)
		(b6 40 1000 'Bandwidth of 6th formant' hz)
		(fnp 248 528 'Frequency of nasal pole' hz)
		(bnp 40 1000 'Bandwidth of nasal pole' hz)
		(fnz 248 528 'Frequency of nasal zero' hz)
		(bnz 40 1000 'Bandwidth of nasal zero' hz)
		(ftp 300 3000 'Frequency of tracheal pole' hz)
		(btp 40 1000 'Bandwidth of tracheal pole' hz)
		(ftz 300 3000 'Frequency of tracheal zero' hz)
		(btz 40 2000 'Bandwidth of tracheal zero' hz)

	"Parallel Friction-Excited:"
		(a2f 0 80 'Amplitude of friction-excited parallel 2nd formant' dB)
		(a3f 0 80 'Amplitude of friction-excited parallel 3rd formant' dB)
		(a4f 0 80 'Amplitude of friction-excited parallel 4th formant' dB)
		(a5f 0 80 'Amplitude of friction-excited parallel 5th formant' dB)
		(a6f 0 80 'Amplitude of friction-excited parallel 6th formant' dB)
		(bypass 0 80 'Amplitude of friction-excited parallel bypass path' dB)
		(b2f 40 1000 'Bandwidth of friction-excited parallel 2nd formant' hz)
		(b3f 60 1000 'Bandwidth of friction-excited parallel 2nd formant' hz)
		(b4f 100 1000 'Bandwidth of friction-excited parallel 2nd formant' hz)
		(b5f 100 1500 'Bandwidth of friction-excited parallel 2nd formant' hz)
		(b6f 100 4000 'Bandwidth of friction-excited parallel 2nd formant' hz)

	"Parallel Voice-Excited:"
		(anv 0 80 'Amplitude of voice-excited parallel nasal formant' dB)
		(a1v 0 80 'Amplitude of voice-excited parallel 1st formant' dB)
		(a2v 0 80 'Amplitude of voice-excited parallel 2nd formant' dB)
		(a3v 0 80 'Amplitude of voice-excited parallel 3rd formant' dB)
		(a4v 0 80 'Amplitude of voice-excited parallel 4th formant' dB)
		(atv 0 80 'Amplitude of voice-excited parallel tracheal formant' dB)

	"Overall gain:"
		(gain 0 80 'Overall gain' dB))! !

!KlattResonatorIndices class methodsFor: 'frame parameter data' stamp: 'dtl 11/15/2009 10:31'!
parameterNames
	^ self parameterData collect: [ :each | each first]! !

!MultiByteFileStream methodsFor: 'access' stamp: 'jmv 5/8/2015 15:12'!
lineEndConvention: aSymbol

	lineEndConvention _ aSymbol caseOf: {
		[ #lf ] -> [ String lfString ].
		[ #cr ] -> [ String crString ] }.! !

!MultiByteFileStream methodsFor: 'line end conversion' stamp: 'jmv 3/4/2021 15:37:29'!
cr

	self newLine! !

!MultiByteFileStream methodsFor: 'line end conversion' stamp: 'jmv 5/8/2015 15:17'!
nextPut: char
	(char isLineSeparator and: [ lineEndConvention notNil ])
		ifTrue: [self nextPutAll: lineEndConvention ]
		ifFalse: [super nextPut: char ].
	^char! !

!MultiByteFileStream methodsFor: 'line end conversion' stamp: 'jmv 5/8/2015 15:17'!
nextPutAll: aString
	| converted |
	converted _ lineEndConvention
		ifNil: [ aString ]
		ifNotNil: [ aString withLineEndings: lineEndConvention ].
	.super nextPutAll: converted.
	^aString! !

!MultiByteFileStream class methodsFor: 'as yet unclassified' stamp: 'jmv 3/4/2021 15:45:00'!
forceNewFileNamed: aFilename
	| fe pathName |
	fe _ aFilename asFileEntry.
	
	fe invalidate.
	fe parent exists ifFalse: [fe parent assureExistence].

	pathName _ fe pathName.
	fe exists
		ifTrue: [
			fe fileAccessor deleteFile: pathName ifAbsent: [
				(CannotDeleteFileException new
					messageText: 'Could not delete the old version of file ' , pathName) signal]].

	^ (self new open: pathName forWrite: true)
		ifNil: [
			"Failed to open the file"
			(FileWriteError fileName: pathName)
				signal: ('File [', pathName, '] open for write failed' ) ]! !

!CrLfFileStream methodsFor: 'initialization' stamp: 'jmv 3/4/2021 15:46:47'!
initialize
	"By default, use host platform convention"
	lineEndConvention _ FileIOAccessor default pathNameDelimiter = $\
		ifFalse: [ String lfString ]
		ifTrue: [ String crlfString ]! !

!InvalidDirectoryError methodsFor: 'exceptionDescription' stamp: 'ar 5/30/2001 20:49'!
defaultAction
	"Return an empty list as the default action of signaling the occurance of an invalid directory."
	^#()! !

!InvalidDirectoryError methodsFor: 'accessing' stamp: 'ar 5/30/2001 20:44'!
pathName
	^pathName! !

!InvalidDirectoryError methodsFor: 'accessing' stamp: 'ar 5/30/2001 20:45'!
pathName: badPathName
	pathName _ badPathName! !

!InvalidDirectoryError class methodsFor: 'exceptionInstantiator' stamp: 'ar 5/30/2001 20:49'!
pathName: badPathName
	^self new pathName: badPathName! !

!SmalltalkImage class methodsFor: 'as yet unclassified' stamp: 'jmv 5/8/2015 09:46'!
current
	^Smalltalk! !

!ProtoObject methodsFor: '*compatibility-VMMaker' stamp: 'jmv 3/2/2021 11:43:50'!
ifNil: nilBlock ifNotNilDo: ifNotNilBlock
	"Compatibility. Prefer #ifNil:ifNotNil:"
	^self ifNil: nilBlock ifNotNil: ifNotNilBlock! !

!ProtoObject methodsFor: '*compatibility-VMMaker' stamp: 'jmv 12/18/2013 00:02'!
ifNotNilDo: ifNotNilBlock
	"Compatibility. Prefer #ifNotNil:"
	^self ifNotNil: ifNotNilBlock! !

!Object methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/14/2015 11:11'!
isCharacter
	^false! !

!UndefinedObject methodsFor: '*compatibility-VMMaker' stamp: 'jmv 3/1/2010 09:59'!
environment
	"Necessary to support disjoint class hierarchies."

	^Smalltalk		"No environments in Cuis..."! !

!Behavior methodsFor: '*compatibility-VMMaker' stamp: 'jmv 11/1/2011 23:15'!
environment
	"Return the environment in which the receiver is visible"
	^Smalltalk! !

!Float methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 15:08:16'!
printOn: aStream base: base digitCount: numDigits

	self isNaN ifTrue: [aStream nextPutAll: 'NaN'. ^ self]. "check for NaN before sign"
	self > 0.0
		ifTrue: [self absPrintOn: aStream base: base digitCount: numDigits]
		ifFalse:
			[self sign = -1
				ifTrue: [aStream nextPutAll: '-'].
			self = 0.0
				ifTrue: [aStream nextPutAll: '0.0'. ^ self]
				ifFalse: [self negated absPrintOn: aStream base: base digitCount: numDigits]]! !

!Float methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 15:24:25'!
printOn: aStream base: base nDigits: numDigits

	self printOn: aStream base: base digitCount: numDigits! !

!Character methodsFor: '*compatibility-VMMaker' stamp: 'bp 11/29/2014 17:26'!
asUnicode
	"Answer the unicode encoding of the receiver"
	"self leadingChar = 0 ifTrue: [^ self asInteger].
	^self encodedCharSet charsetClass convertToUnicode: self charCode"
	^self asInteger! !

!Character methodsFor: '*compatibility-VMMaker' stamp: 'jmv 11/27/2017 11:04:11'!
between: min and: max 
	"Answer whether the receiver is less than or equal to the argument, max, 
	and greater than or equal to the argument, min."

	^self numericValue >= min numericValue and: [self numericValue <= max numericValue]! !

!Character methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/14/2015 11:12'!
isCharacter
	^true! !

!Character methodsFor: '*compatibility-VMMaker' stamp: 'jmv 9/6/2016 10:27:11'!
value
	^self numericValue! !

!Character class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 9/6/2016 10:26:47'!
value: anInteger
	"Answer the Character whose value is anInteger."

	^ self numericValue: anInteger! !

!BlockClosure methodsFor: '*compatibility-VMMaker' stamp: 'bp 11/29/2014 17:29'!
cull: firstArg
	"Activate the receiver, with one or zero arguments."
	
	numArgs >= 1 ifTrue: [ ^self value: firstArg ].
	^self value! !

!BlockClosure methodsFor: '*compatibility-VMMaker' stamp: 'bp 11/29/2014 17:29'!
cull: firstArg cull: secondArg
	"Activate the receiver, with two or less arguments."
	
	numArgs >= 2 ifTrue: [ ^self value: firstArg value: secondArg ].	
	numArgs = 1 ifTrue: [ ^self value: firstArg ].
	^self value! !

!BlockClosure methodsFor: '*compatibility-VMMaker' stamp: 'bp 11/29/2014 17:29'!
cull: firstArg cull: secondArg cull: thirdArg
	"Activate the receiver, with three or less arguments."
	
	numArgs >= 2 ifTrue: [ 
		numArgs >= 3 ifTrue: [ ^self value: firstArg value: secondArg value: thirdArg ].
		^self value: firstArg value: secondArg ].
	numArgs = 1 ifTrue: [ ^self value: firstArg ].
	^self value! !

!BlockClosure methodsFor: '*compatibility-VMMaker' stamp: 'bp 11/29/2014 17:29'!
cull: firstArg cull: secondArg cull: thirdArg cull: fourthArg
	"Activate the receiver, with four or less arguments."
	
	numArgs >= 3 ifTrue: [
		numArgs >= 4 ifTrue: [
			^self value: firstArg value: secondArg value: thirdArg value: fourthArg ].
		^self value: firstArg value: secondArg value: thirdArg ].
	numArgs = 2 ifTrue: [ ^self value: firstArg value: secondArg ].	
	numArgs = 1 ifTrue: [ ^self value: firstArg ].
	^self value! !

!InputSensor methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/8/2015 12:47'!
cursorPoint
	^self mousePoint! !

!SequenceableCollection methodsFor: '*compatibility-VMMaker' stamp: 'jmv 4/2/2016 23:18'!
doWithIndex: elementAndIndexBlock
	"Old style. Prefer #withIndexDo:"
	self withIndexDo: elementAndIndexBlock! !

!String methodsFor: '*compatibility-VMMaker' stamp: 'eem 2/3/2015 12:04'!
subStrings: separators 
	"Answer an array containing the substrings in the receiver separated 
	by the elements of separators."
	| char result sourceStream subString |
	#Collectn.
	"Changed 2000/04/08 For ANSI <readableString> protocol."
	(separators isString or:[separators allSatisfy: [:element | element isCharacter]]) ifFalse:
		[^ self error: 'separators must be Characters.'].
	sourceStream := ReadStream on: self.
	result := OrderedCollection new.
	subString := String new.
	[sourceStream atEnd]
		whileFalse: 
			[char := sourceStream next.
			(separators includes: char)
				ifTrue: [subString notEmpty
						ifTrue: 
							[result add: subString copy.
							subString := String new]]
				ifFalse: [subString := subString , (String with: char)]].
	subString notEmpty ifTrue: [result add: subString copy].
	^ result asArray! !

!String methodsFor: '*compatibility-VMMaker' stamp: 'hjh 5/9/2015 17:03'!
withCRs
	"Return a copy of the receiver in which backslash (\) characters have been replaced with carriage returns."

	^ self collect: [ :c | c = $\ ifTrue: [ Character cr ] ifFalse: [ c ]].! !

!String class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 12/18/2013 00:42'!
cr
	^self crString! !

!String class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 12/18/2013 00:42'!
crlf
	^self crlfString! !

!String class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 12/18/2013 00:42'!
lf
	^self lfString! !

!Symbol methodsFor: '*compatibility-VMMaker' stamp: 'hjh 5/9/2015 17:37'!
value: anObject 
	^anObject perform: self.! !

!CompiledMethod methodsFor: '*compatibility-VMMaker' stamp: 'NS 12/12/2003 15:18'!
isAbstract
	| marker |
	marker := self markerOrNil.
	^ marker notNil and: [self class abstractMarkers includes: marker].! !

!CompiledMethod methodsFor: '*compatibility-VMMaker' stamp: 'al 2/13/2006 17:44'!
markerOrNil
	"If I am a marker method, answer the symbol used to mark me.  Otherwise
	answer nil.

	What is a marker method?  It is method with body like 
		'self subclassResponsibility' or '^ self subclassResponsibility' 
	used to indicate ('mark') a special property.

	Marker methods compile to bytecode like:

		9 <70> self
		10 <D0> send: <literal 1>
		11 <87> pop
		12 <78> returnSelf

	for the first form, or 

		9 <70> self
		10 <D0> send: <literal 1>
		11 <7C> returnTop

	for the second form."

	| e |
	((e := self endPC) = 19 or: [e = 20]) ifFalse: [^ nil].
	(self numLiterals = 3) ifFalse:[^ nil].
	(self at: 17) =  16r70 ifFalse:[^ nil].		"push self"
	(self at: 18) = 16rD0 ifFalse:[^ nil].		"send <literal 1>"
	"If we reach this point, we have a marker method that sends self <literal 1>"
	^ self literalAt: 1
! !

!CompiledMethod class methodsFor: '*compatibility-VMMaker' stamp: 'NS 12/12/2003 15:17'!
abstractMarkers
	^ #(subclassResponsibility shouldNotImplement)! !

!SystemDictionary methodsFor: '*compatibility-VMMaker' stamp: 'jmv 7/2/2019 08:08:30'!
datedVersion
	^ self version! !

!Stream methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 15:02:52'!
print: aNumber digits: numDigits

	aNumber printOn: self base: 10 nDigits: numDigits ! !

!PositionableStream methodsFor: '*compatibility-VMMaker-nonhomogeneous accessing'!
nextNumber: n 
	"Answer the next n bytes as a positive Integer or LargePositiveInteger."
	| s |
	s := 0.
	1 to: n do: 
		[:i | s := (s bitShift: 8) bitOr: self next asInteger].
	^ s normalize! !

!WriteStream methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/8/2015 14:58'!
crtab
	"Append a return character, followed by anInteger tab characters, to the 
	receiver."

	self cr; tab! !

!WriteStream methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/8/2015 14:59'!
crtab: anInteger
	"Append a return character, followed by anInteger tab characters, to the 
	receiver."

	self cr.
	anInteger timesRepeat: [self tab]! !

!WriteStream methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 14:59:34'!
nl
	self newLine ! !

!StandardFileStream methodsFor: '*compatibility-VMMaker' stamp: 'jmv 4/2/2016 23:38'!
lineEndConvention: aSymbol
	"ignore it"! !

!StandardFileStream class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/31/2016 12:38'!
forceNewFileNamed: aFilename
	^ aFilename asFileEntry forceWriteStream! !

!Compiler methodsFor: '*compatibility-VMMaker' stamp: 'jmv 3/4/2021 15:27:24'!
parse: textOrStream in: aClass notifying: req
	"Compile the argument, textOrStream, with respect to the class, aClass, and
	 answer the MethodNode that is the root of the resulting parse tree.  Notify the
	 argument, req, if an error occurs. The failBlock is defaulted to an empty block."

	self from: textOrStream class: aClass context: nil notifying: req.
	^self parser
		parse: sourceStream
		class: class
		noPattern: false
		context: context
		notifying: requestor
		ifFail: []! !

!Encoder methodsFor: '*compatibility-VMMaker' stamp: 'jmv 3/1/2010 11:18'!
environment
	"Answer the environment of the current compilation context,
	 be it in a class or global (e.g. a workspace)"
	^Smalltalk "No environments in Cuis..."! !

!Transcript class methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 15:04:14'!
nl
	self newLine! !

!Transcript class methodsFor: '*compatibility-VMMaker' stamp: 'KenD 8/26/2016 15:04:19'!
print: aNumber digits: numDigits

	aNumber printOn: self base: 10 nDigits: numDigits ! !
KlattResonatorIndices initialize!
