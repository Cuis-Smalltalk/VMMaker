'From Cuis 5.0 [latest update: #4531] on 2 March 2021 at 2:22:18 pm'!
'Description '!
!provides: 'Tests-VMMaker' 1 2!
!requires: 'VMMaker' 1 0 nil!
SystemOrganization addCategory: 'Tests-VMMaker'!


!classDefinition: #BitBltSimulationTest category: 'Tests-VMMaker'!
ClassTestCase subclass: #BitBltSimulationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'BitBltSimulationTest class' category: 'Tests-VMMaker'!
BitBltSimulationTest class
	instanceVariableNames: ''!

!classDefinition: #FloatMathPluginTests category: 'Tests-VMMaker'!
TestCase subclass: #FloatMathPluginTests
	instanceVariableNames: 'seed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'FloatMathPluginTests class' category: 'Tests-VMMaker'!
FloatMathPluginTests class
	instanceVariableNames: ''!

!classDefinition: #IncludedMethodsTest category: 'Tests-VMMaker'!
TestCase subclass: #IncludedMethodsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'IncludedMethodsTest class' category: 'Tests-VMMaker'!
IncludedMethodsTest class
	instanceVariableNames: ''!

!classDefinition: #InterpreterPrimitivesTest category: 'Tests-VMMaker'!
TestCase subclass: #InterpreterPrimitivesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'InterpreterPrimitivesTest class' category: 'Tests-VMMaker'!
InterpreterPrimitivesTest class
	instanceVariableNames: ''!

!classDefinition: #JPEGReadWriter2PluginTest category: 'Tests-VMMaker'!
TestCase subclass: #JPEGReadWriter2PluginTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'JPEGReadWriter2PluginTest class' category: 'Tests-VMMaker'!
JPEGReadWriter2PluginTest class
	instanceVariableNames: ''!

!classDefinition: #ObjectMemoryVariablesTest category: 'Tests-VMMaker'!
TestCase subclass: #ObjectMemoryVariablesTest
	instanceVariableNames: 'saveWordSize omv32 omv64'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'ObjectMemoryVariablesTest class' category: 'Tests-VMMaker'!
ObjectMemoryVariablesTest class
	instanceVariableNames: ''!

!classDefinition: #SlangTest category: 'Tests-VMMaker'!
TestCase subclass: #SlangTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'SlangTest class' category: 'Tests-VMMaker'!
SlangTest class
	instanceVariableNames: ''!

!classDefinition: #VMConstantsTest category: 'Tests-VMMaker'!
TestCase subclass: #VMConstantsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'VMConstantsTest class' category: 'Tests-VMMaker'!
VMConstantsTest class
	instanceVariableNames: ''!

!classDefinition: #SlangTestSupportInterpreter category: 'Tests-VMMaker'!
ObjectMemory subclass: #SlangTestSupportInterpreter
	instanceVariableNames: 'cg inlineFlag primFailCode aVarWithOneReference aVarWithTwoReferences objectMemory aVariable breakSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'SlangTestSupportInterpreter class' category: 'Tests-VMMaker'!
SlangTestSupportInterpreter class
	instanceVariableNames: ''!

!classDefinition: #SlangTestSupportSSIP category: 'Tests-VMMaker'!
SmartSyntaxInterpreterPlugin subclass: #SlangTestSupportSSIP
	instanceVariableNames: 'cg inlineFlag'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'SlangTestSupportSSIP class' category: 'Tests-VMMaker'!
SlangTestSupportSSIP class
	instanceVariableNames: ''!

!classDefinition: #SlangTestSupportPlugin category: 'Tests-VMMaker'!
InterpreterPlugin subclass: #SlangTestSupportPlugin
	instanceVariableNames: 'cg inlineFlag'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-VMMaker'!
!classDefinition: 'SlangTestSupportPlugin class' category: 'Tests-VMMaker'!
SlangTestSupportPlugin class
	instanceVariableNames: ''!


!BitBltSimulationTest commentStamp: 'jmv 10/26/2009 09:03' prior: 0!
These tests require VMMaker and should be considered part of it.!

!FloatMathPluginTests commentStamp: '<historical>' prior: 0!
FloatMathPluginTests buildSuite run.!

!IncludedMethodsTest commentStamp: 'dtl 11/9/2010 21:03' prior: 0!
Various classes in the image contain methods that are intended to be translated to C and executed as primitives. IncludedMethodsTest provides tests to validate these methods.
!

!InterpreterPrimitivesTest commentStamp: 'dtl 7/27/2011 11:32' prior: 0!
InterpreterPrimitivesTest provides test coverage for certain potentially problematic
primitives and methods in the interpreter.!

!JPEGReadWriter2PluginTest commentStamp: 'dtl 10/9/2010 12:22' prior: 0!
Unit tests for JPEGReadWriter2Plugin. Initially this is a single test that documents a bug report, other tests may be added over time.
!

!ObjectMemoryVariablesTest commentStamp: 'dtl 5/31/2010 16:47' prior: 0!
ObjectMemoryVariablesTest validates the values of the constants defined in ObjectMemory class>>initBytesPerWord:

The intent is to enable rewriting these constants in a manner that permits them to be fully defined as C preprocessor macros at compile time, such that separate code generation is not required for 32-bit and 64-bit object memory.

See CCodeGenerator>>emitDefineBytesPerWordOn: for the C preprocessor macro definitions.!

!SlangTest commentStamp: 'dtl 9/18/2010 17:43' prior: 0!
The SlangTest tests verify code generation and inlining.
!

!VMConstantsTest commentStamp: 'dtl 5/8/2011 14:43' prior: 0!
A VMConstantsTest supports refactoring of class variables into shared pools by documenting certain bugs or special issues encountered during the refactoring.
!

!SlangTestSupportInterpreter commentStamp: 'dtl 9/19/2010 21:36' prior: 0!
SlangTestSupport implements translatable methods for use in SlangTest unit tests.

	"VMMaker clearCacheEntriesFor: SlangTestSupportInterpreter.
	SlangTestSupportInterpreter asCString"!

!SlangTestSupportSSIP commentStamp: 'dtl 9/19/2010 11:38' prior: 0!
SlangTestSupportSSIP implements translatable methods for use in SlangTest unit tests.
It is a subclass of SmartSyntaxInterpreterPlugin, which requires additional
test coverage.

	"VMMaker clearCacheEntriesFor: SlangTestSupportSSIP.
	SlangTestSupportSSIP asCString"!

!SlangTestSupportPlugin commentStamp: 'dtl 9/19/2010 21:36' prior: 0!
SlangTestSupport implements translatable methods for use in SlangTest unit tests.
This is a subclass of InterpreterPlugin, which provides coverage of slang translation
for base plugins.

	"VMMaker clearCacheEntriesFor: SlangTestSupportPlugin.
	SlangTestSupportPlugin asCString"!

!BitBltSimulationTest methodsFor: 'running' stamp: 'dtl 6/6/2010 15:19'!
setUp
	(self respondsTo: #timeout: )
		ifTrue: [self perform: #timeout: with: 10]
! !

!BitBltSimulationTest methodsFor: 'tests' stamp: 'jmv 10/26/2009 08:49'!
testAlphaCompositing2Simulated
	"self run: #testAlphaCompositing2Simulated"

	| bb f1 f2 mixColor result eps |
	f1 := Form extent: 1@1 depth: 32.
	f2 := Form extent: 1@1 depth: 32.
	eps := 0.5 / 255.
	0 to: 255 do:[:i|
		f1 colorAt: 0@0 put: Color transparent.
		mixColor := Color red alpha: i / 255.0.
		f2 colorAt: 0@0 put: mixColor.
		mixColor := f2 colorAt: 0@0.
		bb := BitBlt toForm: f1.
		bb sourceForm: f2.
		bb combinationRule: Form blend.
		bb copyBitsSimulated.
		result := f1 colorAt: 0@0.
		self assert: (result red - mixColor alpha) abs < eps.
		self assert: result alpha = mixColor alpha.
	]! !

!BitBltSimulationTest methodsFor: 'tests' stamp: 'jmv 10/26/2009 08:50'!
testAlphaCompositingSimulated
	"self run: #testAlphaCompositingSimulated"
	
	| bb f1 f2 mixColor result eps |

	f1 := Form extent: 1@1 depth: 32.
	f2 := Form extent: 1@1 depth: 32.
	eps := 0.5 / 255.
	0 to: 255 do:[:i|
		f1 colorAt: 0@0 put: Color blue.
		mixColor := Color red alpha: i / 255.0.
		f2 colorAt: 0@0 put: mixColor.
		mixColor := f2 colorAt: 0@0.
		bb := BitBlt toForm: f1.
		bb sourceForm: f2.
		bb combinationRule: Form blend.
		bb copyBitsSimulated.
		result := f1 colorAt: 0@0.
		self assert: (result red - mixColor alpha) abs < eps.
		self assert: (result blue - (1.0 - mixColor alpha)) abs < eps.
		self assert: result alpha = 1.0.
	]! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:34'!
arcCos: f
	<primitive: 'primitiveArcCos' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:34'!
arcCosH: f
	<primitive: 'primitiveArcCosH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:34'!
arcSin: f
	<primitive: 'primitiveArcSin' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:34'!
arcSinH: f
	<primitive: 'primitiveArcSinH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:35'!
arcTan2: value with: arg
	<primitive: 'primitiveArcTan2' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
arcTan: value
	<primitive: 'primitiveArcTan' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:35'!
arcTanH: value
	<primitive: 'primitiveArcTanH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:35'!
cos: value
	<primitive: 'primitiveCos' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:35'!
cosH: value
	<primitive: 'primitiveCosH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
exp: value
	<primitive: 'primitiveExp' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
fractionPart: value
	<primitive: 'primitiveFractionalPart' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:36'!
hypot: x with: y
	<primitive: 'primitiveHypot' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:24'!
ln: value
	<primitive: 'primitiveLogN' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:41'!
log10: value
	<primitive: 'primitiveLog10' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
sin: value
	<primitive: 'primitiveSin' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:37'!
sinH: value
	<primitive: 'primitiveSinH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
sqrt: value
	<primitive: 'primitiveSqrt' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:37'!
tan: value
	<primitive: 'primitiveTan' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 17:37'!
tanH: value
	<primitive: 'primitiveTanH' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'math' stamp: 'ar 3/26/2006 14:29'!
timesTwoPower: f with: arg
	<primitive: 'primitiveTimesTwoPower' module: 'FloatMathPlugin'>
	^self primitiveFailed! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'ar 3/26/2006 16:52'!
makeLargeTestData
	"self basicNew makeLargeTestData"
	self makeTestData: 'sin-large.dat' using:[:f| self sin: f] seed: 432567 rounds: 1000000.
	self makeTestData: 'log-large.dat' using:[:f| self ln: f abs] seed: 432567 rounds: 1000000.
	self makeTestData: 'sqrt-large.dat' using:[:f| self sqrt: f abs] seed: 432567 rounds: 1000000.
	self makeTestData: 'atan-large.dat' using:[:f| self arcTan: f] seed: 432567 rounds: 1000000.
	self makeTestData: 'exp-large.dat' using:[:f| self exp: f] seed: 432567 rounds: 1000000.
! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'ar 3/26/2006 16:52'!
makeSmallTestData
	"self basicNew makeSmallTestData"
	self makeTestData: 'sin-small.dat' using:[:f| self sin: f] seed: 321567 rounds: 10000.
	self makeTestData: 'log-small.dat' using:[:f| self ln: f abs] seed: 321567 rounds: 10000.
	self makeTestData: 'sqrt-small.dat' using:[:f| self sqrt: f abs] seed: 321567 rounds: 10000.
	self makeTestData: 'atan-small.dat' using:[:f| self arcTan: f] seed: 321567 rounds: 10000.
	self makeTestData: 'exp-small.dat' using:[:f| self exp: f] seed: 321567 rounds: 10000.
! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'nice 12/11/2018 22:32'!
makeTestData: fileName using: aBlock seed: aSeed rounds: rounds
	| bytes out float result |
	bytes := ByteArray new: 8.
	out := FileStream newFileNamed: fileName.
	[
		out binary. 
		out nextNumber: 4 put: rounds.
		out nextNumber: 4 put: aSeed.
		self seed: aSeed.
		float := Float basicNew: 2.
		'Creating test data for: ', fileName 
			displayProgressAt: Sensor cursorPoint 
			from: 1 to: rounds during:[:bar|
				1 to: rounds do:[:i|
					i \\ 10000 = 0 ifTrue:[bar value: i].
					[1 to: 8 do:[:j| bytes at: j put: (self nextInt: 256)-1].
					float basicAt: 1 put: (bytes unsignedLongAt: 1 bigEndian: true).
					float basicAt: 2 put: (bytes unsignedLongAt: 5 bigEndian: true).
					float isNaN] whileTrue.
					result := aBlock value: float.
					out nextNumber: 4 put: (result basicAt: 1).
					out nextNumber: 4 put: (result basicAt: 2).
				].
			].
	] ensure:[out close].
! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'nice 12/11/2018 22:33'!
runTest: aBlock
	| bytes out float result |
	bytes := ByteArray new: 8.
	out := WriteStream on: ByteArray new.
	float := Float basicNew: 2.
	1 to: 10000 do:[:i|
		[1 to: 8 do:[:j| bytes at: j put: (self nextInt: 256)-1].
		float basicAt: 1 put: (bytes unsignedLongAt: 1 bigEndian: true).
		float basicAt: 2 put: (bytes unsignedLongAt: 5 bigEndian: true).
		float isNaN] whileTrue.
		result := [aBlock value: float] on: Error do:[:ex|
			"we convert all errors into NaNs to have a value for testing"
			ex return: Float nan.
		].
		out nextNumber: 4 put: (result basicAt: 1).
		out nextNumber: 4 put: (result basicAt: 2).
	].
	^self md5HashMessage: out contents.! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'nice 12/11/2018 22:33'!
setUp
	self seed: 253213.! !

!FloatMathPluginTests methodsFor: 'running' stamp: 'nice 12/11/2018 22:33'!
verifyTestData: fileName using: aBlock
	| rounds aSeed bytes float result in expected count bits |
	in := [FileStream readOnlyFileNamed: fileName] 
			on: FileDoesNotExistException 
			do:[:ex| ex return: nil].
	in ifNil:[^nil].
	count := bits := 0.
	bytes := ByteArray new: 8.
	[
		in binary.
		rounds := in nextNumber: 4.
		aSeed := in nextNumber: 4.
		self seed: aSeed.
		float := Float basicNew: 2.
		expected := Float basicNew: 2.
		'Verifying test data from: ', fileName 
			displayProgressAt: Sensor cursorPoint 
			from: 1 to: rounds during:[:bar|
				1 to: rounds do:[:i|
					i \\ 10000 = 0 ifTrue:[bar value: i].
					[1 to: 8 do:[:j| bytes at: j put: (self nextInt: 256)-1].
					float basicAt: 1 put: (bytes unsignedLongAt: 1 bigEndian: true).
					float basicAt: 2 put: (bytes unsignedLongAt: 5 bigEndian: true).
					float isNaN] whileTrue.
					result := aBlock value: float.
					expected basicAt: 1 put: (in nextNumber: 4).
					expected basicAt: 2 put: (in nextNumber: 4).
					((expected isNaN and:[result isNaN]) or:[expected = result]) ifFalse:[
						(expected basicAt: 1) = (result basicAt: 1)
							ifFalse:[self error: 'Verification failure'].
						count := count + 1.
						bits := bits + ((expected basicAt: 2) - (result basicAt: 2)) abs.
					].
				].
			].
	] ensure:[in close].
	self assert: count = 0. "all the same"! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
md5HashMessage: aStringOrByteArray
	^ self md5HashStream: (ReadStream on: aStringOrByteArray asByteArray)
! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'eem 7/22/2010 13:20'!
md5HashStream: aStream
	| start buffer bytes sz n words hash large |
	hash := WordArray with: 16r67452301 with: 16rEFCDAB89 with: 16r98BADCFE with: 16r10325476.
	words := WordArray new: 16.
	buffer := ByteArray new: 64.
	start := aStream position.
	[aStream atEnd] whileFalse: [
		bytes := aStream nextInto: buffer.
		(bytes size < 64 or:[aStream atEnd]) ifTrue:[
			sz := bytes size.
			buffer replaceFrom: 1 to: sz with: bytes startingAt: 1.
			buffer from: sz+1 to: buffer size put: 0.
			sz < 56 ifTrue:[
				buffer at: sz + 1 put: 128. "trailing bit"
			] ifFalse:[
				"not enough room for the length, so just pad this one, then..."
				sz < 64 ifTrue:[buffer at: sz + 1 put: 128].
				1 to: 16 do:[:i| words at: i put: (buffer unsignedLongAt: i*4-3 bigEndian: false)].
				self md5Transform: words hash: hash.
				"process one additional block of padding ending with the length"
				buffer atAllPut: 0.
				sz = 64 ifTrue: [buffer at: 1 put: 128].
			].
			"Fill in the final 8 bytes with the 64-bit length in bits."
			n := (aStream position - start) * 8.
			7 to: 0 by: -1 do:[:i| buffer at: (buffer size - i) put: ((n bitShift: 7 - i * -8) bitAnd: 255)].
		].
		1 to: 16 do:[:i| words at: i put: (buffer unsignedLongAt: i*4-3 bigEndian: false)].
		self md5Transform: words hash: hash.
	].
	bytes := ByteArray new: 16.
	bytes unsignedLongAt: 1 put: (hash at: 4) bigEndian: true.
	bytes unsignedLongAt: 5 put: (hash at: 3) bigEndian: true.
	bytes unsignedLongAt: 9 put: (hash at: 2) bigEndian: true.
	bytes unsignedLongAt: 13 put: (hash at: 1) bigEndian: true.
	large := LargePositiveInteger new: 16.
	1 to: 16 do:[:i| large digitAt: i put: (bytes at: i)].
	^large normalize! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 19:45'!
md5Transform: in hash: hash
	"This adds the incoming words to the existing hash"
	| a b c d |
	<primitive: 'primitiveMD5Transform' module: 'CroquetPlugin'>
	a := hash at: 1.
	b := hash at: 2.
	c := hash at: 3.
	d := hash at: 4.

	a := self step1: a x: b y: c z: d data: (in at:  1) add: 16rD76AA478 shift: 7.
	d := self step1: d x: a y: b z: c data: (in at:  2) add: 16rE8C7B756 shift: 12.
	c := self step1: c x: d y: a z: b data: (in at:  3) add: 16r242070DB shift: 17.
	b := self step1: b x: c y: d z: a data: (in at:  4) add: 16rC1BDCEEE shift: 22.
	a := self step1: a x: b y: c z: d data: (in at:  5) add: 16rF57C0FAF shift:  7.
	d := self step1: d x: a y: b z: c data: (in at:  6) add: 16r4787C62A shift: 12.
	c := self step1: c x: d y: a z: b data: (in at:  7) add: 16rA8304613 shift: 17.
	b := self step1: b x: c y: d z: a data: (in at:  8) add: 16rFD469501 shift: 22.
	a := self step1: a x: b y: c z: d data: (in at:  9) add: 16r698098D8 shift:  7.
	d := self step1: d x: a y: b z: c data: (in at: 10) add: 16r8B44F7AF shift: 12.
	c := self step1: c x: d y: a z: b data: (in at: 11) add: 16rFFFF5BB1 shift: 17.
	b := self step1: b x: c y: d z: a data: (in at: 12) add: 16r895CD7BE shift: 22.
	a := self step1: a x: b y: c z: d data: (in at: 13) add: 16r6B901122 shift:  7.
	d := self step1: d x: a y: b z: c data: (in at: 14) add: 16rFD987193 shift: 12.
	c := self step1: c x: d y: a z: b data: (in at: 15) add: 16rA679438E shift: 17.
	b := self step1: b x: c y: d z: a data: (in at: 16) add: 16r49B40821 shift: 22.

	a := self step2: a x: b y: c z: d data: (in at:  2) add: 16rF61E2562 shift:  5.
	d := self step2: d x: a y: b z: c data: (in at:  7) add: 16rC040B340 shift:  9.
	c := self step2: c x: d y: a z: b data: (in at: 12) add: 16r265E5A51 shift: 14.
	b := self step2: b x: c y: d z: a data: (in at:  1) add: 16rE9B6C7AA shift: 20.
	a := self step2: a x: b y: c z: d data: (in at:  6) add: 16rD62F105D shift:  5.
	d := self step2: d x: a y: b z: c data: (in at: 11) add: 16r02441453 shift:  9.
	c := self step2: c x: d y: a z: b data: (in at: 16) add: 16rD8A1E681 shift: 14.
	b := self step2: b x: c y: d z: a data: (in at:  5) add: 16rE7D3FBC8 shift: 20.
	a := self step2: a x: b y: c z: d data: (in at: 10) add: 16r21E1CDE6 shift:  5.
	d := self step2: d x: a y: b z: c data: (in at: 15) add: 16rC33707D6 shift:  9.
	c := self step2: c x: d y: a z: b data: (in at:  4) add: 16rF4D50D87 shift: 14.
	b := self step2: b x: c y: d z: a data: (in at:  9) add: 16r455A14ED shift: 20.
	a := self step2: a x: b y: c z: d data: (in at: 14) add: 16rA9E3E905 shift:  5.
	d := self step2: d x: a y: b z: c data: (in at:  3) add: 16rFCEFA3F8 shift:  9.
	c := self step2: c x: d y: a z: b data: (in at:  8) add: 16r676F02D9 shift: 14.
	b := self step2: b x: c y: d z: a data: (in at: 13) add: 16r8D2A4C8A shift: 20.

	a := self step3: a x: b y: c z: d data: (in at:  6) add: 16rFFFA3942 shift:  4.
	d := self step3: d x: a y: b z: c data: (in at:  9) add: 16r8771F681 shift: 11.
	c := self step3: c x: d y: a z: b data: (in at: 12) add: 16r6D9D6122 shift: 16.
	b := self step3: b x: c y: d z: a data: (in at: 15) add: 16rFDE5380C shift: 23.
	a := self step3: a x: b y: c z: d data: (in at:  2) add: 16rA4BEEA44 shift:  4.
	d := self step3: d x: a y: b z: c data: (in at:  5) add: 16r4BDECFA9 shift: 11.
	c := self step3: c x: d y: a z: b data: (in at:  8) add: 16rF6BB4B60 shift: 16.
	b := self step3: b x: c y: d z: a data: (in at: 11) add: 16rBEBFBC70 shift: 23.
	a := self step3: a x: b y: c z: d data: (in at: 14) add: 16r289B7EC6 shift:  4.
	d := self step3: d x: a y: b z: c data: (in at:  1) add: 16rEAA127FA shift: 11.
	c := self step3: c x: d y: a z: b data: (in at:  4) add: 16rD4EF3085 shift: 16.
	b := self step3: b x: c y: d z: a data: (in at:  7) add: 16r04881D05 shift: 23.
	a := self step3: a x: b y: c z: d data: (in at: 10) add: 16rD9D4D039 shift:  4.
	d := self step3: d x: a y: b z: c data: (in at: 13) add: 16rE6DB99E5 shift: 11.
	c := self step3: c x: d y: a z: b data: (in at: 16) add: 16r1FA27CF8 shift: 16.
	b := self step3: b x: c y: d z: a data: (in at:  3) add: 16rC4AC5665 shift: 23.

	a := self step4: a x: b y: c z: d data: (in at:  1) add: 16rF4292244 shift:  6.
	d := self step4: d x: a y: b z: c data: (in at:  8) add: 16r432AFF97 shift: 10.
	c := self step4: c x: d y: a z: b data: (in at: 15) add: 16rAB9423A7 shift: 15.
	b := self step4: b x: c y: d z: a data: (in at:  6) add: 16rFC93A039 shift: 21.
	a := self step4: a x: b y: c z: d data: (in at: 13) add: 16r655B59C3 shift:  6.
	d := self step4: d x: a y: b z: c data: (in at:  4) add: 16r8F0CCC92 shift: 10.
	c := self step4: c x: d y: a z: b data: (in at: 11) add: 16rFFEFF47D shift: 15.
	b := self step4: b x: c y: d z: a data: (in at:  2) add: 16r85845DD1 shift: 21.
	a := self step4: a x: b y: c z: d data: (in at:  9) add: 16r6FA87E4F shift:  6.
	d := self step4: d x: a y: b z: c data: (in at: 16) add: 16rFE2CE6E0 shift: 10.
	c := self step4: c x: d y: a z: b data: (in at:  7) add: 16rA3014314 shift: 15.
	b := self step4: b x: c y: d z: a data: (in at: 14) add: 16r4E0811A1 shift: 21.
	a := self step4: a x: b y: c z: d data: (in at:  5) add: 16rF7537E82 shift:  6.
	d := self step4: d x: a y: b z: c data: (in at: 12) add: 16rBD3AF235 shift: 10.
	c := self step4: c x: d y: a z: b data: (in at:  3) add: 16r2AD7D2BB shift: 15.
	b := self step4: b x: c y: d z: a data: (in at: 10) add: 16rEB86D391 shift: 21.

	a := (a + (hash at: 1)) bitAnd: 16rFFFFFFFF. hash at: 1 put: a.
	b := (b + (hash at: 2)) bitAnd: 16rFFFFFFFF. hash at: 2 put: b.
	c := (c + (hash at: 3)) bitAnd: 16rFFFFFFFF. hash at: 3 put: c.
	d := (d + (hash at: 4)) bitAnd: 16rFFFFFFFF. hash at: 4 put: d.

	^hash! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
rotate: value by: amount
	"Rotate value left by amount"
	| lowMask highMask |
	lowMask := (1 bitShift: 32-amount) - 1.
	highMask := 16rFFFFFFFF - lowMask.
	^((value bitAnd: lowMask) bitShift: amount) + 
		((value bitAnd: highMask) bitShift: amount-32)! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
step1: w x: x y: y z: z data: data add: add shift: s
	"First step in MD5 transformation"
	| f result |
	f := z bitXor: (x bitAnd: (y bitXor: z)).
	result := w + f + data + add.
	result := self rotate: result by: s.
	^result + x bitAnd: 16rFFFFFFFF! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
step2: w x: x y: y z: z data: data add: add shift: s
	"First step in MD5 transformation"
	| f result |
	f := y bitXor: (z bitAnd: (x bitXor: y)).
	result := w + f + data + add.
	result := self rotate: result by: s.
	^result + x bitAnd: 16rFFFFFFFF! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
step3: w x: x y: y z: z data: data add: add shift: s
	"First step in MD5 transformation"
	| f result |
	f := (x bitXor: y) bitXor: z.
	result := w + f + data + add.
	result := self rotate: result by: s.
	^result + x bitAnd: 16rFFFFFFFF! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:19'!
step4: w x: x y: y z: z data: data add: add shift: s
	"First step in MD5 transformation"
	| f result |
	f := y bitXor: (x bitOr: (z  bitXor: 16rFFFFFFFF)).
	result := w + f + data + add.
	result := self rotate: result by: s.
	^result + x bitAnd: 16rFFFFFFFF! !

!FloatMathPluginTests methodsFor: 'md5' stamp: 'ar 3/26/2006 15:20'!
testMD5
	self assert: (self md5HashMessage: 'a') = 16r0CC175B9C0F1B6A831C399E269772661.
	self assert: (self md5HashMessage: 'abc') = 16r900150983CD24FB0D6963F7D28E17F72.
	self assert: (self md5HashMessage: 'message digest') = 16rF96B697D7CB7938D525A2F31AAF161D0.
	self assert: (self md5HashMessage:
		'abcdefghijklmnopqrstuvwxyz') = 16rC3FCD3D76192E4007DFB496CCA67E13B.
	self assert: (self md5HashMessage:
		'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789') =
		16rD174AB98D277D9F5A5611C2C9F419D9F.
	self assert: (self md5HashMessage:
		'12345678901234567890123456789012345678901234567890123456789012345678901234567890') =
 		16r57EDF4A22BE3C955AC49DA2E2107B67A.! !

!FloatMathPluginTests methodsFor: 'rand' stamp: 'nice 12/11/2018 22:32'!
nextInt: anInteger
	"Answer a random integer in the interval [1, anInteger]."

	| a m q r lo hi aLoRHi |
	a := 16r000041A7 asFloat.    " magic constant =      16807 "
	m := 16r7FFFFFFF asFloat.    " magic constant = 2147483647 "
	q := (m quo: a) asFloat.
	r  := (m \\ a) asFloat.
	hi := (seed quo: q) asFloat.
	lo := seed - (hi * q).  " = seed rem: q"  
	aLoRHi := (a * lo) - (r * hi).
	seed := (aLoRHi > 0.0)
		ifTrue:  [aLoRHi]
		ifFalse: [aLoRHi + m].
	^ (seed / m * anInteger) truncated + 1! !

!FloatMathPluginTests methodsFor: 'rand' stamp: 'nice 12/11/2018 22:23'!
seed: anInteger
	seed := anInteger! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 4/15/2007 22:46'!
testArcCos
	| hash |
	hash := self runTest:[:f| self arcCos: f].
	self assert: hash = 320603091210691421897131240956682310429! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:44'!
testArcCosH
	| hash |
	hash := self runTest:[:f| self arcCosH: f].
	self assert: hash = 6724426144112251941037505276242428134! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:43'!
testArcSin
	| hash |
	hash := self runTest:[:f| self arcSin: f].
	self assert: hash = 27372132577303862731837100895783885417! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:42'!
testArcSinH
	| hash |
	hash := self runTest:[:f| self arcSinH: f].
	self assert: hash = 255911863578190171815115260235896145802! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:43'!
testArcTan
	| hash |
	hash := self runTest:[:f| self arcTan: f].
	self assert: hash = 17311773710959114634056077345168823659! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:51'!
testArcTan2
	| hash |
	hash := self runTest:[:f| self arcTan2: f with: f].
	self assert: hash = 287068347279655848752274030373495709564! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:44'!
testArcTanH
	| hash |
	hash := self runTest:[:f| self arcTanH: f].
	self assert: hash = 295711907369004359459882231908879164929! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:45'!
testCos
	| hash |
	hash := self runTest:[:f| self cos: f].
	self assert: hash = 110207739557966732640546618158077332978! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:42'!
testCosH
	| hash |
	hash := self runTest:[:f| self cosH: f].
	self assert: hash = 139309299067563830037108641802292492276! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 14:27'!
testExp
	| hash |
	hash := self runTest:[:f| self exp: f].
	self assert: hash = 264681209343177480335132131244505189510! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 14:27'!
testFloatAt
	| hash flt |
	flt := FloatArray new: 1.
	hash := self runTest:[:f| flt at: 1 put: f. flt at: 1].
	self assert: hash = 80498428122197125691266588764018905399! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 14:27'!
testFraction
	| hash |
	hash := self runTest:[:f| self fractionPart: f].
	self assert: hash = 320444785026869345695277323179170692004! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:51'!
testHypot
	| hash |
	hash := self runTest:[:f| self hypot: f with: f+1].
	self assert: hash = 217113721886532765853628735806816720346! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 14:27'!
testLog
	| hash |
	hash := self runTest:[:f| self ln: f abs].
	self assert: hash = 24389651894375564945708989023746058645! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:42'!
testLog10
	| hash |
	hash := self runTest:[:f| self log10: f abs].
	self assert: hash = 135564553959509933253581837789050718785! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:44'!
testSin
	| hash |
	hash := self runTest:[:f| self sin: f].
	self assert: hash = 290162321010315440569513182938961037473! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:44'!
testSinH
	| hash |
	hash := self runTest:[:f| self sinH: f].
	self assert: hash = 146029709156303766079448006055284064911! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 14:28'!
testSqrt
	| hash |
	hash := self runTest:[:f| self sqrt: f abs].
	self assert: hash = 112236588358122834093969606123302196127! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 4/15/2007 22:46'!
testTan
	| hash |
	hash := self runTest:[:f| self tan: f].
	self assert: hash = 207143885112027702205238433494882679660! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'ar 3/26/2006 17:43'!
testTanH
	| hash |
	hash := self runTest:[:f| self tanH: f].
	self assert: hash = 15738508136206638425252880299326548123! !

!FloatMathPluginTests methodsFor: 'tests' stamp: 'nice 12/11/2018 22:33'!
testTimesTwoPower
	| hash |
	hash := self runTest:[:f| self timesTwoPower: f with: (self nextInt: 200) - 100].
	self assert: hash = 278837335583284459890979576373223649870.! !

!FloatMathPluginTests methodsFor: 'data' stamp: 'ar 3/26/2006 17:56'!
testAtanData
	self verifyTestData: 'atan-small.dat' using:[:f| self arcTan: f].
	self verifyTestData: 'atan-large.dat' using:[:f| self arcTan: f].
! !

!FloatMathPluginTests methodsFor: 'data' stamp: 'ar 3/26/2006 17:56'!
testExpData
	self verifyTestData: 'exp-small.dat' using:[:f| self exp: f].
	self verifyTestData: 'exp-large.dat' using:[:f| self exp: f].
! !

!FloatMathPluginTests methodsFor: 'data' stamp: 'ar 3/26/2006 17:56'!
testLogData
	self verifyTestData: 'log-small.dat' using:[:f| self ln: f abs].
	self verifyTestData: 'log-large.dat' using:[:f| self ln: f abs].
! !

!FloatMathPluginTests methodsFor: 'data' stamp: 'ar 3/26/2006 17:56'!
testSinData
	self verifyTestData: 'sin-small.dat' using:[:f| self sin: f].
	self verifyTestData: 'sin-large.dat' using:[:f| self sin: f].
! !

!FloatMathPluginTests methodsFor: 'data' stamp: 'ar 3/26/2006 17:56'!
testSqrtData
	self verifyTestData: 'sqrt-small.dat' using:[:f| self sqrt: f abs].
	self verifyTestData: 'sqrt-large.dat' using:[:f| self sqrt: f abs].! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/9/2010 19:48'!
compare: string1 with: string2 collated: order
	"Return 1, 2 or 3, if string1 is <, =, or > string2, with the collating order of characters given by the order array."

	<primitive: 'primitiveCompareString' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 19:42'!
compress: bm toByteArray: ba

	<primitive: 'primitiveCompressToByteArray' module: 'MiscPrimitivePlugin'>
	self primitiveFailed! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 20:03'!
convert8bitSignedFrom: aByteArray to16Bit: aSoundBuffer
	"Copy the contents of the given array of signed 8-bit samples into the given array of 16-bit signed samples."

	<primitive: 'primitiveConvert8BitSigned' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 19:42'!
decompress: bm fromByteArray: ba at: index

	<primitive: 'primitiveDecompressFromByteArray' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 20:03'!
findFirstInString: aString  inSet: inclusionMap  startingAt: start

	<primitive: 'primitiveFindFirstInString' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/9/2010 19:38'!
findSubstring: key in: body startingAt: start matchTable: matchTable
	"Answer the index in the string body at which the substring key first occurs, at or beyond start.  The match is determined using matchTable, which can be used to effect, eg, case-insensitive matches.  If no match is found, zero will be returned."

	<primitive: 'primitiveFindSubstring' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 21:36'!
hashBytes: aByteArray startingWith: speciesHash
	"Answer the hash of a byte-indexed collection,
	using speciesHash as the initial value.
	See SmallInteger>>hashMultiply.

	The primitive should be renamed at a
	suitable point in the future"

	<primitive: 'primitiveStringHash' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 20:03'!
indexOfAscii: anInteger inString: aString startingAt: start

	<primitive: 'primitiveIndexOfAsciiInString' module: 'MiscPrimitivePlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 20:36'!
mixSampleCount: n into: aSoundBuffer startingAt: startIndex leftVol: leftVol rightVol: rightVol
	"Play samples from a wave table by stepping a fixed amount through the table on every sample. The table index and increment are scaled to allow fractional increments for greater pitch accuracy."
	"(FMSound pitch: 440.0 dur: 1.0 loudness: 0.5) play"

	<primitive:'primitiveMixFMSound' module:'SoundGenerationPlugin'>
	self primitiveFailed
! !

!IncludedMethodsTest methodsFor: 'primitives' stamp: 'dtl 11/10/2010 20:03'!
translate: aString from: start  to: stop  table: table
	"translate the characters in the string by the given table, in place"

	<primitive: 'primitiveTranslateStringWithTable' module: 'MiscPrimitivePlugin'>
	self primitiveFailed! !

!IncludedMethodsTest methodsFor: 'testing' stamp: 'dtl 2/1/2011 19:49'!
expectedFailures

	^#(testFindSubstringOldVersionWithMissingTypeChecks
		testFindSubstringInWideString)
! !

!IncludedMethodsTest methodsFor: 'testing' stamp: 'dtl 11/15/2013 13:49'!
testFindSubstringInByteString
	"Verify that primitive exists in the VM and works as expected for byte
	sized string and key. If key is a WideString, as may be the case if testing
	for a WideString as substring of a byte sized string, then the primitive
	should fail. Earlier version of the primitive would accept the non-bytes
	parameter, leading to incorrect results, as documented in
	testFindSubstringOldVersionWithMissingTypeChecks"

	| position |
	position := self
				findSubstring: 'bc'
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 2.
	self should: [self
				findSubstring: 'bc' asWideString
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray)]
		raise: Error
	
! !

!IncludedMethodsTest methodsFor: 'testing' stamp: 'dtl 11/15/2013 13:49'!
testFindSubstringInWideString
	"The primitive will fail if invoked on a non-byte receiver. WideString does
	not call the primitive, so this is an expected failure."

	| position |
	position := self
				findSubstring: 'bc'
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 0.
	position := self
				findSubstring: 'bc' asWideString
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 2
! !

!IncludedMethodsTest methodsFor: 'testing' stamp: 'dtl 11/15/2013 13:49'!
testFindSubstringOldVersionWithMissingTypeChecks
	"Verify that primitive exists in the VM. This test documents the behavior of older versions
	of the primitive that did not perform type checking on to fail on WideString parameters.
	Newer versions of the primitive handle this properly, hence this test is an expectedFailure.
	The fix for this issue (by Andreas Raab) is in TMethod>>argConversionExprFor:stackIndex:
	which was added to VMMaker in VMMaker-dtl.202.
	
	If this test passes, it is an indication that the TMethod>>argConversionExprFor:stackIndex:
	update is missing from the VMMaker code generator that produced the VM."
	
	"(MiscPrimitivePluginTest selector: #testArgsAsFlatArrayAndOffsets) run"

	| position |
	"If both receiver and argument are byte size, the primitive performs correctly"
	position := self
				findSubstring: 'bc'
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 2.

	"Plugin accepts wide string argument, but should not do so."
	position := self
				findSubstring: 'bc' asWideString
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 0.

	position := self
				findSubstring: 'bc'
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 0.

	"Older versions of the plugin produce incorrect results here"
	position := self
				findSubstring: 'bc' asWideString
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 5 "Incorrect!!"
! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/9/2010 20:00'!
testCompareWithCollated
	"Verify that primitive exists in the VM"

	self assert: 3 = (self compare: 'foo' with: 'bar' collated: ((0 to: 255) as: ByteArray))
! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/10/2010 08:03'!
testCompressToByteArray

	| bitmap byteArray |
	bitmap := Bitmap with: 16rFFFFFFFF.
	byteArray := ByteArray new:  4.
	self compress: bitmap toByteArray: byteArray.
	self should: byteArray = #[1 5 255 0]! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/10/2010 20:14'!
testConvert8bitSignedFromTo16Bit
	"SampledSound class>>convert8bitSignedFrom:to16Bit:"


	| aByteArray aSoundBuffer |
	aByteArray := #[1 2 3 4 5 6 7 8 9].
	aSoundBuffer := SoundBuffer newMonoSampleCount: aByteArray size.
	self convert8bitSignedFrom: aByteArray to16Bit: aSoundBuffer.
	self assert: aSoundBuffer = ((SoundBuffer new: 10) at: 1 put: 256; at: 2 put: 512;
		at: 3 put: 768; at: 4 put: 1024; at: 5 put: 1280; at: 6 put: 1536; at: 7 put: 1792;
		at: 8 put: 2048; at: 9 put: 2304; at: 10 put: 0; yourself)! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/10/2010 20:00'!
testDecompressFromByteArrayAt

	| bitmap byteArray s size |
	byteArray := #(1 5 255  0) asByteArray.
	s := ReadStream on: byteArray.
	size := Bitmap decodeIntFrom: s.
	bitmap := Bitmap new: size.
	self decompress: bitmap fromByteArray: byteArray at: s position + 1.
	self should: bitmap = ((Bitmap new: 1) at: 1 put: 4294967295; yourself)! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/9/2010 20:54'!
testFindFirstInStringInSetStartingAt

	| position set |
	set := ((0 to: 255) collect: [:e | (e \\ 2) + $0 asciiValue]) asByteArray.
	position := self findFirstInString: 'abcdef' inSet: set startingAt: 1.
	self assert: position = 1
! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/9/2010 20:14'!
testFindSubstring
	"Verify that primitive exists in the VM and that non byte array arguments cause primitive to fail"

	| position |
	position := IncludedMethodsTest new
				findSubstring: 'bc'
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray).
	self assert: position = 2.
	self should: [IncludedMethodsTest new
				findSubstring: 'bc' asWideString
				in: 'abcdef'
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray)]
					raise: Error.
	self should: [IncludedMethodsTest new
				findSubstring: 'bc'
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray)]
					raise: Error.
	self should: [IncludedMethodsTest new
				findSubstring: 'bc' asWideString
				in: 'abcdef' asWideString
				startingAt: 1
				matchTable: ((0 to: 255)
						as: ByteArray)]
					raise: Error
! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/10/2010 21:48'!
testHashBytesStartingWith

	| ba result |
	ba := #[1 2 3 4 5 6 7 8 9].
	result := self hashBytes: ba startingWith: 12345.
	self assert: result = 170953102
! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/9/2010 20:57'!
testIindexOfAsciiInStringStartingAt

	| position |
	position := self indexOfAscii: 50 inString: '012345' startingAt: 1.
	self assert: position = 3! !

!IncludedMethodsTest methodsFor: 'testing - MiscPrimitivePlugin' stamp: 'dtl 11/9/2010 20:33'!
testTranslateFromToTable
	"Verify that primitive exists in the VM"

	| s t |
	s := 'foo' copy. "copy so string is instantiated each time"
	t := ByteArray withAll: ((1 to: 255) as: ByteArray).
	self translate: s from: 1 to: 3 table: t.
	self assert: s = 'gpp'
! !

!IncludedMethodsTest methodsFor: 'testing - SoundGeneratorPlugin' stamp: 'dtl 11/10/2010 20:45'!
testMixSampleCountIntoStartingAtLeftVolRightVol

	"mixSampleCount: n into: aSoundBuffer startingAt: startIndex leftVol: leftVol rightVol: rightVol"! !

!IncludedMethodsTest methodsFor: 'testing - SoundGeneratorPlugin' stamp: 'dtl 11/9/2010 21:02'!
todoForSoundGeneratorPlugin
	"TODO - write tests for these"

	^#(
		(FMSound mixSampleCount:into:startingAt:leftVol:rightVol:)
		(PluckedSound mixSampleCount:into:startingAt:leftVol:rightVol:)
		(LoopedSampledSound mixSampleCount:into:startingAt:leftVol:rightVol:)
		(SampledSound mixSampleCount:into:startingAt:leftVol:rightVol:)
		(ReverbSound applyReverbTo:startingAt:count:)
		)! !

!IncludedMethodsTest methodsFor: 'testing - ADPCMCodecPlugin' stamp: 'dtl 11/9/2010 21:02'!
todoForADPCMCodecPlugin
	"TODO - write tests for these"

	^#(
		(ADPCMCodec privateDecodeMono:)
		(ADPCMCodec privateDecodeStereo:)
		(ADPCMCodec privateEncodeMono:)
		(ADPCMCodec privateEncodeStereo:)
		(ADPCMCodec indexForDeltaFrom:to:)
		(ADPCMCodec nextBits:)
		(ADPCMCodec nextBits:put:)
		)! !

!InterpreterPrimitivesTest methodsFor: 'testing' stamp: 'dtl 9/22/2012 16:06'!
expectedFailures
	^#("testPrimitiveSubtractLargeIntegersParameterBounds")! !

!InterpreterPrimitivesTest methodsFor: 'testing - largeIntegers' stamp: 'dtl 3/28/2016 10:05'!
testLargeIntegerBugFixedInVMMakerOscog1744
	"LargeIntegersPlugin bug fixed in VMMaker.oscog-nice.1743 VMMaker-dtl.379"

	"Date: Sun, 27 Mar 2016 19:03:48 +0200
	Subject: Re: [Vm-dev] vm problem on cog and stack spur
	From: Nicolas Cellier <nicolas.cellier.aka.nice@gmail.com>
	To: Squeak Virtual Machine Development Discussion <vm-dev@lists.squeakfoundation.org>

	I reduced the failing test to:
	"

	| a b |
	a := 1598335257761788022467377781654101148543282249044465229239888363328190330275719997501596724768507889233831388734160190922469363547795602076820594918.
	b := 49612.
	self assert: a - ((a quo: b)*b) < b


	! !

!InterpreterPrimitivesTest methodsFor: 'testing - primitiveSubtractLargeIntegers' stamp: 'dtl 9/22/2012 16:07'!
testPrimitiveSubtractLargeIntegersParameterBounds
	"Prior to VMMaker VMMaker 4.10.1 enhancement by Nicolas Cellier, range was
	restricted and this test would fail."

	| intOne intTwo |
	"LargeNegativeInteger at lower range boundary"
	intOne := -16r8000000000000000. "maximum negative 64 bit value"
	intTwo := -16r7FFFFFFFFFFFFFFF.
	self shouldnt: [intTwo minus64: intOne]
		raise: Error.
! !

!InterpreterPrimitivesTest methodsFor: 'testing - signed64BitValueOf' stamp: 'dtl 9/22/2012 15:53'!
testSigned64BitValueOfLargeNegativeInteger
	"Exercise #signed64BitValueOf: using a LargeNegativeInteger at the maximum of
	its range. Note, IntegerArrayTest provides coverage of 32-bit equivalent."

	| intOne diff intTwo |
	"LargeNegativeInteger at lower range boundary"
	intOne := -16r8000000000000000. "maximum negative 64 bit value"
	intTwo := -16r7FFFFFFFFFFFFFFF.
	self shouldnt: [diff := intOne minus64: intTwo]
		raise: Error.
	self assert: diff = -1.

	"See testPrimitiveSubtractLargeIntegersParameterBounds"
	"self shouldnt: [diff := intTwo minus64: intOne]
		raise: Error.
	self assert: diff = 1."

	self shouldnt: [diff := intOne minus64: -1]
		raise: Error.
	self assert: diff = intTwo.
	
	"Parameters exceeding allowable range"
	"Prior to VMMaker VMMaker 4.10.1 enhancement by Nicolas Cellier, range was
	restricted and the following would raise errors."
	intOne := -16r8000000000000000 - 1. "exceed most negative 64 bit twos complement"
	intTwo := -16r7FFFFFFFFFFFFFFF.
	diff := intOne minus64: intTwo.
	self assert: diff = -2.
	diff := intTwo minus64: intOne.
	self assert: diff = 2.
	"Full 64 bit magnitude range is now available"
	intOne := -16rFFFFFFFFFFFFFFFF. ""
	intTwo := -16rFFFFFFFFFFFFFFFE.
	diff := intOne minus64: intTwo.
	self assert: diff = -1.
	diff := intTwo minus64: intOne.
	self assert: diff = 1.
	intOne := 16rFFFFFFFFFFFFFFFF. ""
	intTwo := 16rFFFFFFFFFFFFFFFE.
	diff := intOne minus64: intTwo.
	self assert: diff = 1.
	diff := intTwo minus64: intOne.
	self assert: diff = -1.
	"Out of range"
	intOne := -16rFFFFFFFFFFFFFFFF - 1. "exceed most negative 64 bit unsigned magnitude"
	intTwo := -16rFFFFFFFFFFFFFFFF.
	self should: [intOne minus64: intTwo]
		raise: Error.
	self should: [intTwo minus64: intOne]
		raise: Error.
! !

!InterpreterPrimitivesTest methodsFor: 'testing - signed64BitValueOf' stamp: 'dtl 9/22/2012 16:04'!
testSigned64BitValueOfLargePositiveInteger
	"Exercise #signed64BitValueOf: using a LargePositiveInteger at the maximum of
	its range. Note, IntegerArrayTest provides coverage of 32-bit equivalent."

	| intOne diff intTwo |
	"LargePositiveInteger at upper range boundary"
	intOne := 16r7FFFFFFFFFFFFFFF. "maximum 64 bit positive"
	intTwo := 16r7FFFFFFFFFFFFFFE.
	self shouldnt: [diff := intOne minus64: intTwo]
		raise: Error.
	self assert: diff = 1.
	self shouldnt: [diff := intTwo minus64: intOne]
		raise: Error.
	self assert: diff = -1.
	self shouldnt: [diff := intOne minus64: 1]
		raise: Error.
	self assert: diff = intTwo.
	
	"Parameters exceeding allowable range"
	"Prior to VMMaker VMMaker 4.10.1 enhancement by Nicolas Cellier, range was
	restricted and the following would raise errors."
	intOne := 16r7FFFFFFFFFFFFFFF + 1.  "exceed maximum 64 bit twos complement positive"
	intTwo := 16r7FFFFFFFFFFFFFFE.
	diff := intOne minus64: intTwo.
	self should: diff = 2.
	diff := intTwo minus64: intOne.
	self should: diff = -2.

	"Full 64 bit magnitude range is now available"
	intOne := 16rFFFFFFFFFFFFFFFF.
	intTwo := 16rFFFFFFFFFFFFFFFE.
	diff := intOne minus64: intTwo.
	self should: diff = 1.
	diff := intTwo minus64: intOne.
	self should: diff = -1.

	intOne := 16rFFFFFFFFFFFFFFFF + 1. "exceed maximum 64 bit unsigned magnitude"
	intTwo := 16rFFFFFFFFFFFFFFFE.
	self should: [intOne minus64: intTwo]
		raise: Error.
	self should: [intTwo minus64: intOne]
		raise: Error.
! !

!JPEGReadWriter2PluginTest methodsFor: 'private' stamp: 'dtl 11/2/2010 13:15'!
formBytes
	"A jpeg that was generated from Squeak. When written to and from a
	stream, the same bytes should be obtained."

	^ #(255 216 255 224 0 16 74 70 73 70 0 1 1 0 0 1 0 1 0 0 255 219 0 67 0 8 6 6 7 6 5 8 7 7 7 9 9 8 10 12 20 13 12 11 11 12 25 18 19 15 20 29 26 31 30 29 26 28 28 32 36 46 39 32 34 44 35 28 28 40 55 41 44 48 49 52 52 52 31 39 57 61 56 50 60 46 51 52 50 255 219 0 67 1 9 9 9 12 11 12 24 13 13 24 50 33 28 33 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 50 255 192 0 17 8 0 1 0 1 3 1 34 0 2 17 1 3 17 1 255 196 0 31 0 0 1 5 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 255 196 0 181 16 0 2 1 3 3 2 4 3 5 5 4 4 0 0 1 125 1 2 3 0 4 17 5 18 33 49 65 6 19 81 97 7 34 113 20 50 129 145 161 8 35 66 177 193 21 82 209 240 36 51 98 114 130 9 10 22 23 24 25 26 37 38 39 40 41 42 52 53 54 55 56 57 58 67 68 69 70 71 72 73 74 83 84 85 86 87 88 89 90 99 100 101 102 103 104 105 106 115 116 117 118 119 120 121 122 131 132 133 134 135 136 137 138 146 147 148 149 150 151 152 153 154 162 163 164 165 166 167 168 169 170 178 179 180 181 182 183 184 185 186 194 195 196 197 198 199 200 201 202 210 211 212 213 214 215 216 217 218 225 226 227 228 229 230 231 232 233 234 241 242 243 244 245 246 247 248 249 250 255 196 0 31 1 0 3 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 2 3 4 5 6 7 8 9 10 11 255 196 0 181 17 0 2 1 2 4 4 3 4 7 5 4 4 0 1 2 119 0 1 2 3 17 4 5 33 49 6 18 65 81 7 97 113 19 34 50 129 8 20 66 145 161 177 193 9 35 51 82 240 21 98 114 209 10 22 36 52 225 37 241 23 24 25 26 38 39 40 41 42 53 54 55 56 57 58 67 68 69 70 71 72 73 74 83 84 85 86 87 88 89 90 99 100 101 102 103 104 105 106 115 116 117 118 119 120 121 122 130 131 132 133 134 135 136 137 138 146 147 148 149 150 151 152 153 154 162 163 164 165 166 167 168 169 170 178 179 180 181 182 183 184 185 186 194 195 196 197 198 199 200 201 202 210 211 212 213 214 215 216 217 218 226 227 228 229 230 231 232 233 234 242 243 244 245 246 247 248 249 250 255 218 0 12 3 1 0 2 17 3 17 0 63 0 40 162 138 0 255 217) asByteArray
! !

!JPEGReadWriter2PluginTest methodsFor: 'testing' stamp: 'dtl 10/9/2010 12:28'!
testPluginPresent

	self assert: JPEGReadWriter2 new isPluginPresent! !

!JPEGReadWriter2PluginTest methodsFor: 'testing' stamp: 'dtl 10/9/2010 14:13'!
testPrimJPEGReadImage

	| form |
	form := JPEGReadWriter2 formFromStream: self formBytes readStream.
	self should: form bits first = 16rFF808080

"[Vm-dev] JPEGReadWriter2Plugin
Bert Freudenberg bert at freudenbergs.de
Mon Sep 27 15:22:43 UTC 2010

Hi,

have there been changes lately to the jpeg plugin?

On a Mac 4.2.4 VM I see an off-by-one error, all pixels are moved to the right, the first pixel is transparent. On a Mac 5.8.1 Cog VM it works as expected though.

Here's my little test:

(JPEGReadWriter2 formFromStream: #[16rFF 16rD8 16rFF 16rE0 16r00 16r10 16r4A 16r46 16r49 16r46 16r00 16r01 16r01 16r01 16r00 16r48 16r00 16r48 16r00 16r00 16rFF 16rDB 16r00 16r43 16r00 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rFF 16rC2 16r00 16r0B 16r08 16r00 16r01 16r00 16r01 16r01 16r01 16r11 16r00 16rFF 16rC4 16r00 16r14 16r10 16r01 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16r00 16rFF 16rDA 16r00 16r08 16r01 16r01 16r00 16r01 16r3F 16r10] readStream) bits first hex

On 5.8.11 I get 16rFF808080 as expected, on 4.2.4 I get 0.
"! !

!JPEGReadWriter2PluginTest methodsFor: 'testing' stamp: 'dtl 10/9/2010 14:14'!
testPrimJPEGWriteImage

	| form bytes ws |
	form := JPEGReadWriter2 formFromStream: self formBytes readStream.
	ws := WriteStream on: ByteArray new.
	JPEGReadWriter2 putForm: form onStream: ws.
	bytes := ws contents.
	self should: self formBytes = bytes
! !

!ObjectMemoryVariablesTest methodsFor: 'running' stamp: 'dtl 6/6/2010 12:25'!
setUp
	ObjectMemory initializeConstants! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:35'!
testByte0Mask

	self assert: ObjectMemory byte0Mask = 16r00000000000000FF! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:36'!
testByte0Shift

	self assert: ObjectMemory byte0Shift = 0! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:36'!
testByte1Mask

	self assert: ObjectMemory byte1Mask = 16r000000000000FF00! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:36'!
testByte1Shift

	self assert: ObjectMemory byte1Shift = 8! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:36'!
testByte1ShiftNegated
	"Note - signed values are not relevant for bit mask operations, can be recoded as positive"

	self assert: ObjectMemory byte1ShiftNegated = -16r0000000000000008.! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte2Mask

	self assert: ObjectMemory byte2Mask = 16r0000000000FF0000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte2Shift

	self assert: ObjectMemory byte2Shift = 16! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte3Mask

	self assert: ObjectMemory byte3Mask = 16r00000000FF000000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte3Shift

	self assert: ObjectMemory byte3Shift = 24! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte3ShiftNegated
	"Note - signed values are not relevant for bit mask operations, can be recoded as positive"

	self assert: ObjectMemory byte3ShiftNegated = -16r0000000000000018! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte4Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte4Mask = 16r0000000000000000."

	self assert: ObjectMemory byte4Mask = 16r000000FF00000000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:37'!
testByte4Shift

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemoryConstantsAccess byte4Shift = 0."

	self assert: ObjectMemory byte4Shift = 32! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte4ShiftNegated
	"Note - signed values are not relevant for bit mask operations, can be recoded as positive"

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory  initBytesPerWord: 4.
	self assert: ObjectMemory byte4ShiftNegated = 16r0000000000000000."

	self assert: ObjectMemory byte4ShiftNegated = -16r0000000000000020! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte5Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte5Mask = 16r0000000000000000."

	self assert: ObjectMemory byte5Mask = 16r0000FF0000000000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte5Shift

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte5Shift = 0."

	self assert: ObjectMemory byte5Shift = 40! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte5ShiftNegated
	"Note - signed values are not relevant for bit mask operations, can be recoded as positive"

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory  initBytesPerWord: 4.
	self assert: ObjectMemory byte5ShiftNegated = 16r0000000000000000."

	self assert: ObjectMemory byte5ShiftNegated = -16r0000000000000028! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte6Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte6Mask = 16r0000000000000000."

	self assert: ObjectMemory byte6Mask = 16r00FF000000000000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte6Shift

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte6Shift = 0."

	self assert: ObjectMemory byte6Shift = 48! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte7Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte7Mask = 16r0000000000000000."

	self assert: ObjectMemory byte7Mask = 16rFF00000000000000! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte7Shift

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory byte7Shift = 0."

	self assert: ObjectMemory byte7Shift = 56! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:39'!
testByte7ShiftNegated
	"Note - signed values are not relevant for bit mask operations, can be recoded as positive"

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory  initBytesPerWord: 4.
	self assert: ObjectMemory byte7ShiftNegated = 16r0000000000000000."

	self assert: ObjectMemory byte7ShiftNegated = -16r0000000000000038! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:38'!
testBytes3to0Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory bytes3to0Mask = 16r0000000000000000."

	self assert: ObjectMemory bytes3to0Mask = 16r00000000FFFFFFFF! !

!ObjectMemoryVariablesTest methodsFor: 'testing - constants' stamp: 'dtl 5/31/2010 16:38'!
testBytes7to4Mask

	"Note - unused for 32-bit object memory, so 32-bit test is no longer relevant
	ObjectMemory initBytesPerWord: 4.
	self assert: ObjectMemory bytes7to4Mask = 16r0000000000000000."

	self assert: ObjectMemory bytes7to4Mask = 16rFFFFFFFF00000000! !

!SlangTest methodsFor: 'running' stamp: 'dtl 3/1/2020 17:15'!
expectedFailures
	^#(
		testSetInstanceVariableWithAnAccessorMethod . "inliner limitation, enhancement required"
		testIvarShouldNotBeRedeclaredAsLocal . "test added in VMMaker-dtl.278, fix not yet implemented"
		testStatementListAsExpression "test added in VMMaker-dtl.386, fix not yet implemented"
	 )! !

!SlangTest methodsFor: 'running' stamp: 'dtl 3/18/2013 18:48'!
setUp

	"Some of the test may be long running when SlangTestSupport is a subclass
	of ObjectMemory."
	(self respondsTo: #timeout: ) "Recent Squeak images with test case timeout"
		ifTrue: [self perform: #timeout: with: 30].
! !

!SlangTest methodsFor: 'testing preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 19:45'!
testCPreprocessorDirective
	"Test cPreprocessorDirective: "

	"(SlangTest selector: #testCPreprocessorDirective) run"

	| stssi cString |

	stssi := SlangTestSupportInterpreter inline: false.
	cString := stssi asCString: #cPreprocessorDirective.
	self should: ('*# define FOO bar*' match: cString).
	self should: ' define FOO bar' = ((cString copyAfter: $#) findTokens: Character cr) first.
	self should: ((cString findTokens: Character cr) select: [:e | e = '#define FOO bar' ]) size = 0.
	self should: ((cString findTokens: Character cr) select: [:e | e = '# define FOO bar' ]) size = 1.
	self should: ((cString findTokens: Character cr) select: [:e | e = '## define FOO bar' ]) size = 0.
	"verify equivalence to the original trunk version"
	self should: (cString last:37) = ((stssi asCString: #preprocessorExpression) last:37)
! !

!SlangTest methodsFor: 'testing preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 17:12'!
testCppIfIfTrue
	"Test the oscog variant of isDefined:inSmalltalk:comment:ifTrue: 
	Same as  isDefined:inSmalltalk:comment:ifTrue: but does not support the
	comment and Smalltalk block."

	"(SlangTest selector: #testCppIfIfTrue) run"

	| stssi cString stringWithoutWhiteSpace lines expected |

	stssi := SlangTestSupportInterpreter inline: false.

	"verify that the default Smalltalk block that is evaluated in simulation"
	self assert: stssi ifdefElseEndif = #defaultBlockForSimulation.

	"verify generated C string"
	cString := stssi asCString: #cppIfIfTrue.
	lines := (cString findTokens: Character cr) select: [:e |
		{
			'# ifdef HAVE_FOO' .
			'	return 1;' .
			'# else' .
			'	return 0;' .
			'# endif  // HAVE_FOO'
		} includes: e ].
	self should: lines size = 3.
	self should: ('*return 1*' match: lines second).

	"check the rest of the method, ignoring whitespace and ignoring the leading method comment"
	stringWithoutWhiteSpace := cString reject: [:e | e isSeparator].
	expected := 'sqIntcppIfIfTrue(void){#ifdefHAVE_FOOreturn1;#endif//HAVE_FOOreturnnull;}'.
	self should: expected = (stringWithoutWhiteSpace last: expected size).

! !

!SlangTest methodsFor: 'testing preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 17:13'!
testCppIfIfTrueIfFalse
	"Test the oscog variant of isDefined:inSmalltalk:comment:ifTrue:ifFalse:
	Same as  isDefined:inSmalltalk:comment:ifTrue:ifFalse: but does not support
	the comment and Smalltalk block."

	"(SlangTest selector: #testCppIfIfTrueIfFalse) run"

	| stssi cString stringWithoutWhiteSpace lines expected |

	stssi := SlangTestSupportInterpreter inline: false.

	"verify that the default Smalltalk block that is evaluated in simulation"
	self assert: stssi ifdefElseEndif = #defaultBlockForSimulation.

	"verify generated C string"
	cString := stssi asCString: #cppIfIfTrueIfFalse.
	lines := (cString findTokens: Character cr) select: [:e |
		{
			'# ifdef HAVE_FOO' .
			'	return 1;' .
			'# else' .
			'	return 0;' .
			'# endif  // HAVE_FOO'
		} includes: e ].
	self should: lines size = 5.
	self should: ('*return 1*' match: lines second).
	self should: ('*return 0*' match: lines fourth).

	"check the rest of the method, ignoring whitespace and ignoring the leading method comment"
	stringWithoutWhiteSpace := cString reject: [:e | e isSeparator].
	expected := 'sqIntcppIfIfTrueIfFalse(void){#ifdefHAVE_FOOreturn1;#elsereturn0;#endif//HAVE_FOOreturnnull;}'.
	self should: expected = (stringWithoutWhiteSpace last: expected size).



! !

!SlangTest methodsFor: 'testing loop limits' stamp: 'dtl 4/4/2013 23:55'!
testCallMethodEmbeddedWithSendInLoopLimit
	"A loop embedded in a loop with two loop limit variables generated"

	"(SlangTest selector: #testCallMethodEmbeddedWithSendInLoopLimit) debug"

	| m1 sts lines |
	sts := SlangTestSupportInterpreter inline: true.
	m1 := (sts asCString: #callMethodEmbeddedWithSendInLoopLimit)
			copyReplaceAll: 'callMethodEmbeddedWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 2.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
	self should: (lines select: [:e | 'sqInt kLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportPlugin inline: true.
	m1 := (sts asCString: #callMethodEmbeddedWithSendInLoopLimit)
			copyReplaceAll: 'callMethodEmbeddedWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 2.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
	self should: (lines select: [:e | 'sqInt kLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportSSIP inline: true.
	m1 := (sts asCString: #callMethodEmbeddedWithSendInLoopLimit)
			copyReplaceAll: 'callMethodEmbeddedWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 2.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
	self should: (lines select: [:e | 'sqInt kLimiT;' = e withBlanksTrimmed]) size = 1.! !

!SlangTest methodsFor: 'testing loop limits' stamp: 'dtl 4/4/2013 23:56'!
testCallMethodTwiceWithLoopLimitThatMightBeModified
	"Two calls to a method with loop that might be modified generates a distinct
	loop limit variable for each."

	"(SlangTest selector: #testCallMethodTwiceWithLoopLimitThatMightBeModified) debug"

	| m1 sts lines |
	sts := SlangTestSupportInterpreter inline: true.
	m1 := (sts asCString: #callMethodTwiceWithLoopLimitThatMightBeModified)
			copyReplaceAll: 'callMethodTwiceWithLoopLimitThatMightBeModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 2.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT1;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportSSIP inline: true.
	m1 := (sts asCString: #callMethodTwiceWithLoopLimitThatMightBeModified)
			copyReplaceAll: 'callMethodTwiceWithLoopLimitThatMightBeModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 2.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT1;' = e withBlanksTrimmed]) size = 1.
! !

!SlangTest methodsFor: 'testing loop limits' stamp: 'dtl 4/4/2013 23:57'!
testCallMethodTwiceWithSendInLoopLimit
	"Two calls to a method with loop with loop limit that is a method send can
	share the same loop limit variable."

	"(SlangTest selector: #testCallMethodTwiceWithSendInLoopLimit) debug"

	| m1 sts lines |
	sts := SlangTestSupportInterpreter inline: true.
	m1 := (sts asCString: #callMethodTwiceWithSendInLoopLimit)
			copyReplaceAll: 'callMethodTwiceWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportPlugin inline: true.
	m1 := (sts asCString: #callMethodTwiceWithSendInLoopLimit)
			copyReplaceAll: 'callMethodTwiceWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportSSIP inline: true.
	m1 := (sts asCString: #callMethodTwiceWithSendInLoopLimit)
			copyReplaceAll: 'callMethodTwiceWithSendInLoopLimit'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
! !

!SlangTest methodsFor: 'testing loop limits' stamp: 'dtl 4/4/2013 23:57'!
testCallMethodWithLoopLimitThatIsNotModified
	"A call to a method with loop with a constant loop limit does not require a
	loop limit variable."

	"(SlangTest selector: #testCallMethodTwiceWithSendInLoopLimit) debug"

	| m1 sts lines |
	sts := SlangTestSupportInterpreter inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatIsNotModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatIsNotModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 0.
	self should: (lines select: [:e | 'for (i = 0; i <= 10; i += 1) {' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportPlugin inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatIsNotModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatIsNotModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 0.
	self should: (lines select: [:e | 'for (i = 0; i <= 10; i += 1) {' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportSSIP inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatIsNotModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatIsNotModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 0.
	self should: (lines select: [:e | 'for (i = 0; i <= 10; i += 1) {' = e withBlanksTrimmed]) size = 1.
! !

!SlangTest methodsFor: 'testing loop limits' stamp: 'dtl 4/4/2013 23:58'!
testCallMethodWithLoopLimitThatMightBeModified
	"A call to a method with loop with a loop limit that might be modified by the loop
	body requires a loop limit variable."

	"(SlangTest selector: #testCallMethodWithLoopLimitThatMightBeModified) debug"

	| m1 sts lines |
	sts := SlangTestSupportInterpreter inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatMightBeModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatMightBeModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportPlugin inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatMightBeModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatMightBeModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.

	sts := SlangTestSupportSSIP inline: true.
	m1 := (sts asCString: #callMethodWithLoopLimitThatMightBeModified)
			copyReplaceAll: 'callMethodWithLoopLimitThatMightBeModified'
			with: 'methodName'.
	lines := m1 findTokens: String cr.
	self should: (lines select: [:e | '*sqInt *LimiT*' match: e]) size = 1.
	self should: (lines select: [:e | 'sqInt iLimiT;' = e withBlanksTrimmed]) size = 1.
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 1/24/2016 17:30'!
testConditionalInAndBlock
	"Expand ifTrue:ifFalse: properly within a block."

	"(SlangTest selector: #testConditionalInAndBlock) debug"

	| stssi m expected |
	stssi := SlangTestSupportInterpreter inline: true.
	m := stssi asCString: #conditionalInAndBlock.

	m := (m copyWithoutAll: ('' , Character cr)) copyReplaceAll: ('' , Character tab) with: ' '. 
	expected := 'sqInt conditionalInAndBlock(void) { return 1 && ((0 ? TRUE : FALSE));}'.

	self deny: ('*1 && (if (0) {*' match: m). "prior faulty translation"
	self assert: expected = m.
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 3/12/2014 19:31'!
testFetchClassOfIsFullyInlined
	"Test for inlining error resolved in VMMaker 4.13.4 (VMMaker-dtl.343). In this example,
	the ObjectMemoy>>wordMask method must be inlined (marked complete) in order for
	fetchClassOf: to be inlined. Some versions of the inliner treat the #cCode:inSmalltalk:
	at the root of the wordMask method as an indication that it is not completely inlined.
	This in turn prevents fetchClassOf: from being inlined."

	| stssi m |
	stssi := SlangTestSupportInterpreter inline: true.
	m := stssi asCString: #tryInliningForFetchClassOf:.
	self deny: ('*fetchClassOf(rcvr);*' match: m). "fetchClassOf() should not appear as a function call"
	self assert: ('*/# begin fetchClassOf: #/*' match: m). "fetchClassOf: has been inlined"
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 3/18/2013 09:49'!
testInterpDeclareExport
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stssi m p |
	stssi := SlangTestSupportInterpreter inline: false.
	m := (stssi asCString: #declareExportTrueByMethod)
			copyReplaceAll: 'declareExportTrueByMethod'
			with: 'methodName'.
	p := (stssi asCString: #declareExportTrueByPragma)
			copyReplaceAll: 'declareExportTrueByPragma'
			with: 'methodName'.
	self assert: m = p.

	m := (stssi asCString: #declareExportFalseByMethod)
			copyReplaceAll: 'declareExportFalseByMethod'
			with: 'methodName'.
	p := (stssi asCString: #declareExportFalseByPragma)
			copyReplaceAll: 'declareExportFalseByPragma'
			with: 'methodName'.
	self assert: m = p.! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 3/18/2013 09:50'!
testInterpDeclareInline
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stssi m p |
	stssi := SlangTestSupportInterpreter inline: true.
	m := ((stssi asCString: #inlineByMethod)
			copyReplaceAll: 'inlineByMethod'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByMethod'
				with: 'calledMethodName'.
	p := ((stssi asCString: #inlineByPragma)
			copyReplaceAll: 'inlineByPragma'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByPragma'
				with: 'calledMethodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 11/21/2020 19:12'!
testInterpDeclareStatic
	"A static directive should cause the generated function to be declared static."

	| stssi m1 p1 m2 p2 |
	stssi := SlangTestSupportInterpreter inline: false.
	m1 := (stssi asCString: #declareStaticTrueByMethod)
			copyReplaceAll: 'declareStaticTrueByMethod'
			with: 'methodName'.
	p1 := (stssi asCString: #declareStaticTrueByPragma)
			copyReplaceAll: 'declareStaticTrueByPragma'
			with: 'methodName'.
	self assert: m1 = p1.

	m2 := (stssi asCString: #declareStaticFalseByMethod)
			copyReplaceAll: 'declareStaticFalseByMethod'
			with: 'methodName'.
	p2 := (stssi asCString: #declareStaticFalseByPragma)
			copyReplaceAll: 'declareStaticFalseByPragma'
			with: 'methodName'.
	self assert: m2 = p2.

	"verify that the keyword 'static appears in the generated C source"
	self assert: (self string: m1 includesSubstring: 'static').
	self assert: (self string: p1 includesSubstring: 'static').
	self deny: (self string: m2 includesSubstring: 'static').
	self deny: (self string: p2 includesSubstring: 'static')
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 11/21/2020 19:12'!
testInterpDoNotdoNotGenerateByMethod
	"A doNotdoNotGenerate statement should prevent code generation"

	"(SlangTest selector: #testInterpDoNotdoNotGenerateByMethod) debug"

	| stssi m |
	stssi := SlangTestSupportInterpreter inline: false.
	self assert: (SlangTestSupportInterpreter canUnderstand: #doNotGenerateByMethod).
	m := stssi asCString: #doNotGenerateByMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stssi asCString includesSubstring: 'doNotGenerateByMethod').
	self assert: (stssi doNotGenerateByMethod = 4)

! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 11/21/2020 19:13'!
testInterpDoNotdoNotGenerateByPragma
	"A <doNotdoNotGenerate> declaration should prevent code generation"

	| stssi m |
	stssi := SlangTestSupportInterpreter inline: false.
	self assert: (SlangTestSupportInterpreter canUnderstand: #doNotGenerateByPragma).
	m := stssi asCString: #doNotGenerateByPragma.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stssi asCString includesSubstring: 'doNotGenerateByPragma').
	self assert: (stssi doNotGenerateByPragma = 4)
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 11/21/2020 19:13'!
testInterpDoNotdoNotGenerateSubclassResponsibility
	"If a method contains self subclassResponsibility, assume it is not meant for translation."

	| stssi m |
	stssi := SlangTestSupportInterpreter inline: false.
	self assert: (SlangTestSupportInterpreter canUnderstand: #anAbstractMethod).
	m := stssi asCString: #anAbstractMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stssi asCString includesSubstring: 'anAbstractMethod').
	self should: [stssi anAbstractMethod]
		raise: Error

! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 11/21/2020 19:15'!
testInterpMixedMethodAndPragmaDeclarations
	"Pragmas and method declarations should coexist"

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: false.
	s := (stssi asCString: #varDefByMethodAndPragma)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	self assert: (self string: s includesSubstring: 'unsigned int * bar').
	self assert: (self string: s includesSubstring: 'char *foo').
	self assert: (self string: s includesSubstring: 'float baz').
	self assert: (self string: s includesSubstring: 'double fum').
! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 3/18/2013 14:37'!
testInterpReturnTypeC
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stssi m p |
	stssi := SlangTestSupportInterpreter inline: false.
	m := (stssi asCString: #returnTypeByMethod)
			copyReplaceAll: 'returnTypeByMethod'
			with: 'methodName'.
	p := (stssi asCString: #returnTypeByPragma)
			copyReplaceAll: 'returnTypeByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 3/18/2013 14:38'!
testInterpTypeDeclarations
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stssi m p |
	stssi := SlangTestSupportInterpreter inline: false.
	m := (stssi asCString: #varDefByMethod)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	p := (stssi asCString: #varDefByPragma)
			copyReplaceAll: 'varDefByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing interpreter' stamp: 'dtl 2/9/2019 17:03'!
testStatementListAsExpression
	"When a list of statements is used in a target block of an ifTrue:ifFalse: or
	similar, use comma as the statement separator in the generated C.
	Motivated by #objCouldBeClassObj: implementation in oscog."

	"(SlangTest selector: #testStatementListAsExpression) debug"

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: true.
	s := stssi asCString: #statementListAsExpression.
	self deny: ['*BAR;*BAZ*' match: s]. "terminator character following BAR should not be a semicolon"
	self assert: ['*BAR,*BAZ*' match: s]. "instead,use comma to separate statements within expression"
! !

!SlangTest methodsFor: 'testing variable declaration' stamp: 'dtl 9/22/2012 14:30'!
testExportsForSqueak3D
	"If the code generator is not properly initialized in the special case of
	B3DEnginePlugin, the exports table will be incorrect in the generated code.
	Some versions of VMMaker had this problem, this test is to ensure that the
	problem stays fixed."

	Smalltalk at: #B3DEnginePlugin ifPresent: [:squeak3D | | src |
		src := squeak3D asCString.
		self assert: ( '*"Squeak3D", "setInterpreter", (void*)setInterpreter*' match: src)]
! !

!SlangTest methodsFor: 'testing variable declaration' stamp: 'dtl 11/21/2020 19:15'!
testIvarShouldNotBeRedeclaredAsLocal
	"Document a bug in some versions of the code generator. If an instance variable is
	referenced in the generated code, that variable should not be declared as a local
	in the function."

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: false.
	s := stssi asCString: #setBreakSelector: .
	self deny: (self string: s includesSubstring: 'sqInt breakSelector;')
! !

!SlangTest methodsFor: 'testing variable declaration' stamp: 'dtl 11/21/2020 19:16'!
testLiteralName
	"sizeOf: #Foo should translated to C function call sizeof(Foo), where Foo is a literal, not a string"

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: false.
	s := stssi asCString: #sizeOfFoo .
	self assert: (self string: s includesSubstring: 'sizeOf(Foo)').
	self deny: (self string: s includesSubstring: 'sizeOf("Foo")').

! !

!SlangTest methodsFor: 'testing variable declaration' stamp: 'dtl 11/21/2020 19:16'!
testLocalizeGlobalVariables
	"CCodeGenerator>>localizeGlobalVariables performs an optimization
	that may be misleading when introducing a new method. This test
	documents that optimization.
	
	If a method makes reference to an instance variable, and if this is the
	only method containing a reference to that variable, then the C translator
	will produce a local variable declaration in the generated function, and no
	global declaration will appear in the generated source file. This optimization
	is applied after inlining has been performed, so there are legitimate cases
	where a variable must be an instance variable referenced by two methods,
	but can be made local if those methods are inlined into a single method
	and only one method reference to the variable remains. See
	ObjectMemory>>markAndSweep: for an example."

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: false.
	s := stssi asCString: #methodWithReferenceToVariables .
	"variable with one method reference is promoted to a local method variable"
	self assert: (self string: s includesSubstring: 'sqInt aVarWithOneReference;').
	"normal expected behavior, the variable is global in the generated source module."
	self deny: (self string: s includesSubstring: 'sqInt aVarWithTwoReferences;')
! !

!SlangTest methodsFor: 'testing preprocessor directives' stamp: 'dtl 3/18/2013 09:49'!
testIfElseEndif
	"Test isDefinedTrueExpression:inSmalltalk:comment:ifTrue:ifFalse: "

	"(SlangTest selector: #testIfElseEndif) run"

	| stssi cString stringWithoutWhiteSpace lines |
	stssi := SlangTestSupportInterpreter inline: false.

	"verify that the default Smalltalk block that is evaluated in simulation"
	self assert: stssi ifDefinedTrueElseEndif = 4.

	"verify generated C string"
	cString := stssi asCString: #ifDefinedTrueElseEndif.
	lines := (cString findTokens: Character cr) select: [:e |
		{
			'# if (SIZE == 8)  // SIZE may be 4 or 8' .
			'	return 8;' .
			'# else' .
			'	return 4;' .
			'# endif  // SIZE == 8'
		} includes: e ].
	self should: lines size = 5.
	self should: ('*return 8*' match: lines second).
	self should: ('*return 4*' match: lines fourth).

	"check the rest of the method, ignoring whitespace"
	cString := stssi asCString: #ifDefinedTrueElseEndif.
	stringWithoutWhiteSpace := cString reject: [:e | e isSeparator].
	self should: stringWithoutWhiteSpace =
		'sqIntifDefinedTrueElseEndif(void){#if(SIZE==8)//SIZEmaybe4or8return8;#elsereturn4;#endif//SIZE==8returnnull;}'.

"
sqInt ifDefinedTrueElseEndif(void) {
	
# if (SIZE == 8)  // SIZE may be 4 or 8
	return 8;
# else
	return 4;
# endif  // SIZE == 8
	
	return null;
}
"! !

!SlangTest methodsFor: 'testing preprocessor directives' stamp: 'dtl 3/18/2013 09:49'!
testIfdefElseEndif
	"Test isDefined:inSmalltalk:comment:ifTrue:ifFalse: "

	"(SlangTest selector: #testIfdefElseEndif) run"

	| stssi cString stringWithoutWhiteSpace lines |
	self flag: #FIXME. "See redundant implementation in oscog #cppIf:ifTrue:ifFalse:"

	stssi := SlangTestSupportInterpreter inline: false.

	"verify that the default Smalltalk block that is evaluated in simulation"
	self assert: stssi ifdefElseEndif = #defaultBlockForSimulation.

	"verify generated C string"
	cString := stssi asCString: #ifdefElseEndif.
	lines := (cString findTokens: Character cr) select: [:e |
		{
			'# ifdef HAVE_FOO  // some platforms do not support foo properly' .
			'	return 1;' .
			'# else' .
			'	return 0;' .
			'# endif  // HAVE_FOO'
		} includes: e ].
	self should: lines size = 5.
	self should: ('*return 1*' match: lines second).
	self should: ('*return 0*' match: lines fourth).

	"check the rest of the method, ignoring whitespace"
	stringWithoutWhiteSpace := cString reject: [:e | e isSeparator].
	self should: stringWithoutWhiteSpace =
		'sqIntifdefElseEndif(void){#ifdefHAVE_FOO//someplatformsdonotsupportfooproperlyreturn1;#elsereturn0;#endif//HAVE_FOOreturnnull;}'.

"
sqInt ifdefElseEndif(void) {
	
# ifdef HAVE_FOO  // some platforms do not support foo properly
	return 1;
# else
	return 0;
# endif  // HAVE_FOO
	
	return null;
}
"! !

!SlangTest methodsFor: 'testing preprocessor directives' stamp: 'dtl 3/18/2013 09:49'!
testIfdefEndif
	"Test isDefined:inSmalltalk:comment:ifTrue: "

	"(SlangTest selector: #testIfdefEndif) run"

	| stssi cString stringWithoutWhiteSpace lines |
	self flag: #FIXME. "See redundant implementation in oscog #cppIf:ifTrue:"

	stssi := SlangTestSupportInterpreter inline: false.

	"verify that the default Smalltalk block that is evaluated in simulation"
	self assert: stssi ifdefEndif = #defaultBlockForSimulation.

	"verify generated C string"
	cString := stssi asCString: #ifdefEndif.
	lines := (cString findTokens: Character cr) select: [:e |
		{
			'# ifdef HAVE_FOO  // some platforms do not support foo properly' .
			'	return 1;' .
			'# endif  // HAVE_FOO'
		} includes: e ].
	self should: lines size = 3.

	"check the rest of the method, ignoring whitespace"
	cString := stssi asCString: #ifdefEndif.
	stringWithoutWhiteSpace := cString reject: [:e | e isSeparator].
	self should: stringWithoutWhiteSpace =
		'sqIntifdefEndif(void){#ifdefHAVE_FOO//someplatformsdonotsupportfooproperlyreturn1;#endif//HAVE_FOOreturn0;}'.

"
sqInt ifdefEndif(void) {
	
# ifdef HAVE_FOO  // some platforms do not support foo properly
	return 1;
# endif  // HAVE_FOO
	
	return 0;
}
"! !

!SlangTest methodsFor: 'testing preprocessor directives' stamp: 'dtl 2/16/2020 19:36'!
testPreprocessorExpression
	"Test preprocessorExpression: "

	"(SlangTest selector: #testPreprocessorExpression) run"

	| stssi cString |
	self flag: #FIXME. "See redundant implementation in oscog #cPreprocessorDirective: "

	stssi := SlangTestSupportInterpreter inline: false.
	cString := stssi asCString: #preprocessorExpression.
	self should: ('*# define FOO bar*' match: cString).
	self should: ' define FOO bar' = ((cString copyAfter: $#) findTokens: Character cr) first.
	self should: ((cString findTokens: Character cr) select: [:e | e = '# define FOO bar' ]) size = 1.
	self should: ((cString findTokens: Character cr) select: [:e | e = '## define FOO bar' ]) size = 0.
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 3/18/2013 18:32'!
testPluginDeclareExport
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stsp m p |
	stsp := SlangTestSupportPlugin inline: false.
	m := (stsp asCString: #declareExportTrueByMethod)
			copyReplaceAll: 'declareExportTrueByMethod'
			with: 'methodName'.
	p := (stsp asCString: #declareExportTrueByPragma)
			copyReplaceAll: 'declareExportTrueByPragma'
			with: 'methodName'.
	self assert: m = p.

	m := (stsp asCString: #declareExportFalseByMethod)
			copyReplaceAll: 'declareExportFalseByMethod'
			with: 'methodName'.
	p := (stsp asCString: #declareExportFalseByPragma)
			copyReplaceAll: 'declareExportFalseByPragma'
			with: 'methodName'.
	self assert: m = p.! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 3/18/2013 18:34'!
testPluginDeclareInline
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stsp m p |
	stsp := SlangTestSupportPlugin inline: true.
	m := ((stsp asCString: #inlineByMethod)
			copyReplaceAll: 'inlineByMethod'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByMethod'
				with: 'calledMethodName'.
	p := ((stsp asCString: #inlineByPragma)
			copyReplaceAll: 'inlineByPragma'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByPragma'
				with: 'calledMethodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 11/21/2020 19:17'!
testPluginDeclareStatic
	"A static directive should cause the generated function to be declared static."

	| stsp m1 p1 m2 p2 |
	stsp := SlangTestSupportPlugin inline: false.
	m1 := (stsp asCString: #declareStaticTrueByMethod)
			copyReplaceAll: 'declareStaticTrueByMethod'
			with: 'methodName'.
	p1 := (stsp asCString: #declareStaticTrueByPragma)
			copyReplaceAll: 'declareStaticTrueByPragma'
			with: 'methodName'.
	self assert: m1 = p1.

	m2 := (stsp asCString: #declareStaticFalseByMethod)
			copyReplaceAll: 'declareStaticFalseByMethod'
			with: 'methodName'.
	p2 := (stsp asCString: #declareStaticFalseByPragma)
			copyReplaceAll: 'declareStaticFalseByPragma'
			with: 'methodName'.
	self assert: m2 = p2.

	"verify that the keyword 'static appears in the generated C source"
	self assert: (self string: m1 includesSubstring: 'static').
	self assert: (self string: p1 includesSubstring: 'static').
	self deny: (self string: m2 includesSubstring: 'static').
	self deny: (self string: p2 includesSubstring: 'static')
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 11/21/2020 19:18'!
testPluginDoNotGenerateByMethod
	"A doNotdoNotGenerate statement should prevent code generation"

	| stsp m |
	stsp := SlangTestSupportPlugin inline: false.
	self assert: (SlangTestSupportPlugin canUnderstand: #doNotGenerateByMethod).
	m := stsp asCString: #doNotGenerateByMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stsp asCString includesSubstring: 'doNotGenerateByMethod').
	self assert: (stsp doNotGenerateByMethod = 4)
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 11/21/2020 19:19'!
testPluginDoNotGenerateByPragma
	"A <doNotdoNotGenerate> declaration should prevent code generation"

	| stsp m |
	stsp := SlangTestSupportPlugin inline: false.
	self assert: (SlangTestSupportPlugin canUnderstand: #doNotGenerateByPragma).
	m := stsp asCString: #doNotGenerateByPragma.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stsp asCString includesSubstring: 'doNotGenerateByPragma').
	self assert: (stsp doNotGenerateByPragma = 4)
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 11/21/2020 19:19'!
testPluginDoNotGenerateSubclassResponsibility
	"If a method contains self subclassResponsibility, assume it is not meant for translation."

	| stsp m |
	stsp := SlangTestSupportPlugin inline: false.
	self assert: (SlangTestSupportPlugin canUnderstand: #anAbstractMethod).
	m := stsp asCString: #anAbstractMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stsp asCString includesSubstring: 'anAbstractMethod').
	self should: [stsp anAbstractMethod]
		raise: Error
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 11/21/2020 19:20'!
testPluginMixedMethodAndPragmaDeclarations
	"Pragmas and method declarations should coexist"

	| stsp s |
	stsp := SlangTestSupportPlugin inline: false.
	s := (stsp asCString: #varDefByMethodAndPragma)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	self assert: (self string: s includesSubstring: 'unsigned int * bar').
	self assert: (self string: s includesSubstring: 'char *foo').
	self assert: (self string: s includesSubstring: 'float baz').
	self assert: (self string: s includesSubstring: 'double fum').
! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 3/18/2013 18:38'!
testPluginReturnTypeC
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stsp m p |
	stsp := SlangTestSupportPlugin inline: false.
	m := (stsp asCString: #returnTypeByMethod)
			copyReplaceAll: 'returnTypeByMethod'
			with: 'methodName'.
	p := (stsp asCString: #returnTypeByPragma)
			copyReplaceAll: 'returnTypeByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing base plugins' stamp: 'dtl 3/18/2013 18:38'!
testPluginTypeDeclarations
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stsp m p |
	stsp := SlangTestSupportPlugin inline: false.
	m := (stsp asCString: #varDefByMethod)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	p := (stsp asCString: #varDefByPragma)
			copyReplaceAll: 'varDefByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing var decl requires memoryaccess' stamp: 'dtl 4/22/2016 21:48'!
testRemoveTypeDeclarationForRemovedIntermediate
	"Document a bug in variable declaration. This is hard to reproduce, so the test uses
	the actual failure. Necessary conditions are to use MemoryAccess (requires deep
	inlining), then generate the entire interpreter. The error condition appears in the
	reverseDisplayFrom:to: method. Generating that method alone is not sufficient to
	reproduce the bug, the entire interpreter must first be generated, after which the
	method may be individually generated to inspect for the error condition. Symptoms
	are that #ptr, which is used as a sqInt, is incorrectly declared as (char *) due to a
	left over unreferenced declaration in one of the inlined methods.
	The bug exists as of VMMaker-dtl.342 and is corrected in VMMaker-dtl.343."

	| ma maState |
	ma := Smalltalk classNamed: #MemoryAccess.
	ma ifNil: [^ self
		"requires these accessors in combination with object memory / interpreter refactoring in order to reproduce bug"].
	maState := ma isEnabled.
	[ | s cg strm meth |
		ma enable.
		cg := CCodeGenerator new initialize.
		cg declareMethodsStatic: false.
		ContextInterpreter initializeCodeGenerator: cg.
		cg vmClass: ContextInterpreter.
		strm := ReadWriteStream on: ''.
		cg emitCCodeOn: strm doInlining: true doAssertions: false.
		meth := cg methodNamed: 'reverseDisplayFrom:to:' .
		strm := ReadWriteStream on: ''.
		meth emitCCodeOn: strm generator: cg.
		s := strm contents.
		self shouldnt: ('*char #ptr;*' match: s).
		self should: ('*sqInt ptr;*' match: s)
	] ensure: [maState
		ifTrue: [ma enable]
		ifFalse: [ma disable]]
	! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 3/18/2013 18:42'!
testSSIPDeclareExport
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stss m p |
	stss := SlangTestSupportSSIP inline: false.
	m := (stss asCString: #declareExportTrueByMethod)
			copyReplaceAll: 'declareExportTrueByMethod'
			with: 'methodName'.
	p := (stss asCString: #declareExportTrueByPragma)
			copyReplaceAll: 'declareExportTrueByPragma'
			with: 'methodName'.
	self assert: m = p.

	m := (stss asCString: #declareExportFalseByMethod)
			copyReplaceAll: 'declareExportFalseByMethod'
			with: 'methodName'.
	p := (stss asCString: #declareExportFalseByPragma)
			copyReplaceAll: 'declareExportFalseByPragma'
			with: 'methodName'.
	self assert: m = p.! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 3/18/2013 18:48'!
testSSIPDeclareInline
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stss m p |
	stss := SlangTestSupportSSIP inline: true.
	m := ((stss asCString: #inlineByMethod)
			copyReplaceAll: 'inlineByMethod'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByMethod'
				with: 'calledMethodName'.
	p := ((stss asCString: #inlineByPragma)
			copyReplaceAll: 'inlineByPragma'
			with: 'methodName')
				copyReplaceAll: 'methodThatShouldNotBeInlinedByPragma'
				with: 'calledMethodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 11/21/2020 19:31'!
testSSIPDeclareStatic
	"A static directive should cause the generated function to be declared static."

	| stss m1 p1 m2 p2 |
	stss := SlangTestSupportSSIP inline: false.
	m1 := (stss asCString: #declareStaticTrueByMethod)
			copyReplaceAll: 'declareStaticTrueByMethod'
			with: 'methodName'.
	p1 := (stss asCString: #declareStaticTrueByPragma)
			copyReplaceAll: 'declareStaticTrueByPragma'
			with: 'methodName'.
	self assert: m1 = p1.

	m2 := (stss asCString: #declareStaticFalseByMethod)
			copyReplaceAll: 'declareStaticFalseByMethod'
			with: 'methodName'.
	p2 := (stss asCString: #declareStaticFalseByPragma)
			copyReplaceAll: 'declareStaticFalseByPragma'
			with: 'methodName'.
	self assert: m2 = p2.

	"verify that the keyword 'static appears in the generated C source"
	self assert: (self string: m1 includesSubstring: 'static').
	self assert: (self string: p1 includesSubstring: 'static').
	self deny: (self string: m2 includesSubstring: 'static').
	self deny: (self string: p2 includesSubstring: 'static')
! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 11/21/2020 19:21'!
testSSIPDoNotGenerateByMethod
	"A doNotdoNotGenerate statement should prevent code generation"

	| stss m |
	stss := SlangTestSupportSSIP inline: false.
	self assert: (SlangTestSupportSSIP canUnderstand: #doNotGenerateByMethod).
	m := stss asCString: #doNotGenerateByMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stss asCString includesSubstring: 'doNotGenerateByMethod').
	self assert: (stss doNotGenerateByMethod = 4)! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 11/21/2020 19:22'!
testSSIPDoNotGenerateByPragma
	"A <doNotdoNotGenerate> declaration should prevent code generation"

	| stss m |
	stss := SlangTestSupportSSIP inline: false.
	self assert: (SlangTestSupportSSIP canUnderstand: #doNotGenerateByPragma).
	m := stss asCString: #doNotGenerateByPragma.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stss asCString includesSubstring: 'doNotGenerateByPragma').
	self assert: (stss doNotGenerateByPragma = 4)
! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 11/21/2020 19:22'!
testSSIPDoNotGenerateSubclassResponsibility
	"If a method contains self subclassResponsibility, assume it is not meant for translation."

	| stss m |
	stss := SlangTestSupportSSIP inline: false.
	self assert: (SlangTestSupportSSIP canUnderstand: #anAbstractMethod).
	m := stss asCString: #anAbstractMethod.
	self assert: (self string: m includesSubstring: 'No source has been generated').
	self deny: (self string: stss asCString includesSubstring: 'anAbstractMethod').
	self should: [stss anAbstractMethod]
		raise: Error
! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 11/21/2020 19:22'!
testSSIPMixedMethodAndPragmaDeclarations
	"Pragmas and method declarations should coexist"

	| stss s |
	stss := SlangTestSupportSSIP inline: false.
	s := (stss asCString: #varDefByMethodAndPragma)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	self assert: (self string: s includesSubstring: 'unsigned int * bar').
	self assert: (self string: s includesSubstring: 'char *foo').
	self assert: (self string: s includesSubstring: 'float baz').
	self assert: (self string: s includesSubstring: 'double fum').
! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 3/18/2013 18:45'!
testSSIPReturnTypeC
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stss m p |
	stss := SlangTestSupportSSIP inline: false.
	m := (stss asCString: #returnTypeByMethod)
			copyReplaceAll: 'returnTypeByMethod'
			with: 'methodName'.
	p := (stss asCString: #returnTypeByPragma)
			copyReplaceAll: 'returnTypeByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing ssip plugins' stamp: 'dtl 3/18/2013 18:45'!
testSSIPTypeDeclarations
	"Pragma declarations should generate the same C source code as the
	traditional method send declarations"

	| stss m p |
	stss := SlangTestSupportSSIP inline: false.
	m := (stss asCString: #varDefByMethod)
			copyReplaceAll: 'varDefByMethod'
			with: 'methodName'.
	p := (stss asCString: #varDefByPragma)
			copyReplaceAll: 'varDefByPragma'
			with: 'methodName'.
	self assert: m = p! !

!SlangTest methodsFor: 'testing intermediate variable removal' stamp: 'dtl 11/21/2020 19:23'!
testSetInstanceVariableWithAnAccessorMethod
	"Intermediate variable from parameter of accessor method should be removed.
	This is an existing limitation of the inliner, and could be improved for better code
	generation. It is not a bug."

	| stssi s |
	stssi := SlangTestSupportInterpreter inline: true.
	s := (stssi asCString: #setInstanceVariableWithAnAccessorMethod)
			copyReplaceAll: 'setInstanceVariableWithAnAccessorMethod'
			with: 'methodName'.
	self deny: (self string: s includesSubstring: 'sqInt oop').
	self assert: (self string: s includesSubstring: 'aVariable = remap(').

	"Should be translated to something similar to this:
		aVariable = remap(objectMemory, nilObj);

	Not like this:
		oop = remap(objectMemory, nilObj);
		aVariable = oop;"
! !

!SlangTest methodsFor: 'testing smart syntax' stamp: 'dtl 3/18/2013 15:08'!
testSmartSyntaxParameterDeclaration
	"(SlangTest selector: #testSmartSyntaxParameterDeclaration) run"

	| s |
	s := (SlangTestSupportSSIP
			asInlinedCString: #declareInt:wordPointer: ).
	"parameter taken from the stack should be cast to (unsigned *)"
	self should: ['*pointerToWords = ((unsigned **) (interpreterProxy->firstIndexableField(interpreterProxy->stackValue(0))));*' match: s].
	"local variable declaration should match the data type as in the cast"
	self shouldnt: ['*usqInt **pointerToWords*' match: s]. "the buggy code generator renders it as 'usqInt *pointerToWords' "
	self should: ['*unsigned **pointerToWords*' match: s]. "it should be rendered as 'unsigned *pointerToWords' "
! !

!VMConstantsTest methodsFor: 'running' stamp: 'dtl 4/22/2016 21:48'!
initializeVMConstants
	"Restore default values as used during normal intepreter code generation"
	ObjectMemory initialize.
	ContextInterpreter initialize.
! !

!VMConstantsTest methodsFor: 'running' stamp: 'dtl 5/8/2011 14:49'!
tearDown
	"Restore defaults that may have been modified by InterpreterSimulator"
	self initializeVMConstants
! !

!VMConstantsTest methodsFor: 'testing' stamp: 'dtl 4/22/2016 21:48'!
testConstMinusOne
	"ConstMinusOne is the object reference for integer -1. It must be handled specially
	in the interpreter simulator because it resolves to a negative integer that cannot be
	directly stored into a BitMap. See InterpreterSimulator>>initialize. Note that an
	interpreter simulator modifies constants that are used in code generation. VMMaker
	is expected to always initialize constants prior to generating code."

	| interp |
	self initializeVMConstants.
	self assert: InterpreterSimulator constMinusOne = -1.
	[self assert: ContextInterpreter constMinusOne = -1.
	interp := InterpreterSimulator new. "modifies the constants in simulation"
	self deny: InterpreterSimulator constMinusOne = -1.
	self deny: ContextInterpreter constMinusOne = -1.
	self assert: ContextInterpreter constMinusOne = 16rFFFFFFFF.
	"	interp bytesPerWord: 8."
	"	interp initialize."
	"Note: Integer value of -1 is the same in 64 bit object memory because
	SmallInteger format is currently the same as in 32 bit object memory."
	self assert: ContextInterpreter constMinusOne = 16rFFFFFFFF]
		ensure: [self initializeVMConstants].
	self assert: InterpreterSimulator constMinusOne = -1.
! !

!VMConstantsTest class methodsFor: 'class initialization' stamp: 'dtl 5/19/2011 21:43'!
initialize
	"The method added May 2011 to force a recompile for VMMaker loaded through
	the update stream. Recompile is required due to earlier move of class variables
	into shared pools, because existing compiled methods held references to original
	class variables. This method should be removed within about a year, as it serves
	no purpose except to clean up the update stream."
	
	self flag: #FIXME. "delete this method"

	ObjectMemory allSubclasses do: [:cls | cls compileAll]
! !

!SlangTestSupportInterpreter methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 22:21'!
anAbstractMethod

	self subclassResponsibility! !

!SlangTestSupportInterpreter methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:18'!
doNotGenerateByMethod
	"SlangTestSupportInterpreter asCString: #doNotGenerateByMethod"

	self returnTypeC: #int.
	self doNotGenerate.
	^ 2 + 2
! !

!SlangTestSupportInterpreter methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:11'!
doNotGenerateByPragma
	"SlangTestSupportInterpreter asCString: #doNotGenerateByPragma"

	<doNotGenerate>
	<returnTypeC: #int>
	^ 2 + 2
! !

!SlangTestSupportInterpreter methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
asCString

	| stream |
	stream := ReadWriteStream on: String new.
	self cg emitCCodeOn: stream doAssertions: true.
	^ stream contents
! !

!SlangTestSupportInterpreter methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:29'!
asCString: selector

	| method stream |
	method := self cg methodNamed: selector.
	method ifNil: [^ 'No source has been generated'].
	stream := ReadWriteStream on: String new.
	method emitCCodeOn: stream generator: cg.
	^ stream contents
! !

!SlangTestSupportInterpreter methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
cg
	"Lazy initialize, once per test"

	cg ifNil: [ObjectMemory initialize; initializeConstants.
		cg := self class buildCodeGeneratorInlined: inlineFlag = true.
		cg prepareMethodsInlined: inlineFlag = true doAssertions: true].
	^ cg! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 19:40'!
cPreprocessorDirective

	self cPreprocessorDirective: '# define FOO bar'.
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 16:32'!
cppIfIfTrue
	"Exercise the oscog variant. Same as  isDefined:inSmalltalk:comment:ifTrue:
	but does not support the comment and Smalltalk block."

	self cppIf: #'HAVE_FOO'
		ifTrue: [ ^true ].
	^nil
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives - oscog compatibility' stamp: 'dtl 2/16/2020 16:33'!
cppIfIfTrueIfFalse
	"Exercise the oscog variant. Same as  isDefined:inSmalltalk:comment:ifTrue:ifFalse:
	but does not support the comment and Smalltalk block."

	self cppIf: #'HAVE_FOO'
		ifTrue: [ ^true ]
		ifFalse: [ ^false ].
	^nil
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodEmbeddedWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i |
		1 to: self methodWithIntegerResult do: [:k | ]].
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodTwiceWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodTwiceWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i | ].
	1 to: self methodWithIntegerResult do: [:i | ].
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:51'!
callMethodWithLoopLimitThatIsNotModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatIsNotModified: aVar.
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:37'!
methodWithIntegerResult
	"Translates to nonsense, but use this to illustrate the point"
	^(Random new next * 100) asInteger! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:48'!
methodWithLoopLimitThatIsNotModified: arrayObj

	0 to: 10 do: [:i | self storePointerUnchecked: i ofObject: arrayObj withValue: nilObj]
! !

!SlangTestSupportInterpreter methodsFor: 'loop limits' stamp: 'dtl 5/4/2013 13:54'!
methodWithLoopLimitThatMightBeModified: arrayObj

	0 to: (objectMemory lengthOf: arrayObj) do:
	[:i | self storePointerUnchecked: i ofObject: arrayObj withValue: nilObj]
! !

!SlangTestSupportInterpreter methodsFor: 'blocks and conditionals' stamp: 'dtl 1/24/2016 17:14'!
conditionalInAndBlock
	^true
	   and: [false
			ifTrue: [#TRUE]
			ifFalse: [#FALSE]]! !

!SlangTestSupportInterpreter methodsFor: 'blocks and conditionals' stamp: 'dtl 9/11/2016 16:38'!
statementListAsExpression
	"The #BAR and #BAZ statement list should generate statements separated by
	comma rather than terminated by semicolon."
	^#FOO
	  	and: [
			#BAR.
			#BAZ
		]! !

!SlangTestSupportInterpreter methodsFor: 'export declaration' stamp: 'dtl 4/25/2011 23:00'!
declareExportFalseByMethod
	"SlangTestSupportInterpreter asCString: #declareExportFalseByMethod"

	self export: false
! !

!SlangTestSupportInterpreter methodsFor: 'export declaration' stamp: 'dtl 4/25/2011 23:00'!
declareExportFalseByPragma
	"SlangTestSupportInterpreter asCString: #declareExportFalseByPragma"

	<export: false>
! !

!SlangTestSupportInterpreter methodsFor: 'export declaration' stamp: 'dtl 4/25/2011 23:00'!
declareExportTrueByMethod
	"SlangTestSupportInterpreter asCString: #declareExportTrueByMethod"

	self export: true
! !

!SlangTestSupportInterpreter methodsFor: 'export declaration' stamp: 'dtl 4/25/2011 23:00'!
declareExportTrueByPragma
	"SlangTestSupportInterpreter asCString: #declareExportTrueByPragma"

	<export: true>
! !

!SlangTestSupportInterpreter methodsFor: 'static declaration' stamp: 'dtl 4/25/2011 23:00'!
declareStaticFalseByMethod
	"SlangTestSupportInterpreter asCString: #declareStaticFalseByMethod"

	self static: false
! !

!SlangTestSupportInterpreter methodsFor: 'static declaration' stamp: 'dtl 4/25/2011 23:01'!
declareStaticFalseByPragma
	"SlangTestSupportInterpreter asCString: #declareStaticFalseByPragma"

	<static: false>
! !

!SlangTestSupportInterpreter methodsFor: 'static declaration' stamp: 'dtl 4/25/2011 23:01'!
declareStaticTrueByMethod
	"SlangTestSupportInterpreter asCString: #declareStaticTrueByMethod"

	self static: true
! !

!SlangTestSupportInterpreter methodsFor: 'static declaration' stamp: 'dtl 4/25/2011 23:01'!
declareStaticTrueByPragma
	"SlangTestSupportInterpreter asCString: #declareStaticTrueByPragma"

	<static: true>
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives' stamp: 'dtl 3/10/2013 18:04'!
ifDefinedTrueElseEndif

	self isDefinedTrueExpression: 'SIZE == 8'
		inSmalltalk: [ ^ 4 ]
		comment: 'SIZE may be 4 or 8'
		ifTrue: [ ^8 ]
		ifFalse: [ ^4 ].
	^nil
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives' stamp: 'dtl 3/10/2013 17:05'!
ifdefElseEndif

	self isDefined: 'HAVE_FOO'
		inSmalltalk: [ ^ #defaultBlockForSimulation ]
		comment: 'some platforms do not support foo properly'
		ifTrue: [ ^true ]
		ifFalse: [ ^false ].
	^nil
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives' stamp: 'dtl 3/10/2013 16:47'!
ifdefEndif

	self isDefined: 'HAVE_FOO'
		inSmalltalk: [ ^ #defaultBlockForSimulation ]
		comment: 'some platforms do not support foo properly'
		ifTrue: [ ^ true ].
	^ false
! !

!SlangTestSupportInterpreter methodsFor: 'preprocessor directives' stamp: 'dtl 3/10/2013 16:33'!
preprocessorExpression

	self preprocessorExpression: 'define FOO bar'.
! !

!SlangTestSupportInterpreter methodsFor: 'initialize' stamp: 'dtl 3/18/2013 09:47'!
inline: flag
	inlineFlag := flag! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 4/25/2011 23:01'!
inlineByMethod
	"SlangTestSupportInterpreter asCString: #inlineByMethod"
	"SlangTestSupportInterpreter asInlinedCString: #inlineByMethod"

	| bar foo |
	foo := self methodThatShouldBeInlinedByMethod.
	bar := self methodThatShouldNotBeInlinedByMethod! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 4/26/2011 18:40'!
inlineByPragma
	"SlangTestSupportInterpreter asCString: #inlineByPragma"
	"SlangTestSupportInterpreter asInlinedCString: #inlineByPragma"

	| bar foo |
	foo := self methodThatShouldBeInlinedByPragma.
	bar := self methodThatShouldNotBeInlinedByPragma! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 9/18/2010 17:59'!
methodThatShouldBeInlinedByMethod

	self inline: true.
	^ #foo! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldBeInlinedByPragma

	<inline: true>
	^ #foo! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByMethod

	self inline: false.
	^ #bar! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByPragma

	<inline: false>
	^ #bar! !

!SlangTestSupportInterpreter methodsFor: 'inlining' stamp: 'dtl 3/12/2014 18:46'!
tryInliningForFetchClassOf: rcvr

	objectMemory fetchClassOf: rcvr
	! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 5/15/2019 08:10'!
loopExample: array1

	0 to: (self numSlotsOf: array1) - 1 do: [ :i | #foo ].
! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 4/25/2011 22:59'!
returnTypeByMethod
	"SlangTestSupportInterpreter asCString: #returnTypeByMethod"

	self returnTypeC: 'char *'.
! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 4/25/2011 23:00'!
returnTypeByPragma
	"SlangTestSupportInterpreter asCString: #returnTypeByPragma"

	<returnTypeC: 'char *'>
! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 4/25/2011 23:00'!
varDefByMethod
	"SlangTestSupportInterpreter asCString: #varDefByMethod"

	| foo bar |
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 22:26'!
varDefByMethodAndPragma
	"SlangTestSupportInterpreter asCString: #varDefByMethodAndPragma"

	| foo bar baz fum |
	<var: #baz type: 'float'>
	<var: #fum declareC: 'double fum'>
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportInterpreter methodsFor: 'type declaration' stamp: 'dtl 4/25/2011 23:00'!
varDefByPragma
	"SlangTestSupportInterpreter asCString: #varDefByPragma"

	| foo bar |
	<var: #foo type: 'char *'>
	<var: #bar declareC: 'unsigned int * bar'>
! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 4/26/2011 07:38'!
methodWithReferenceToAVarWithTwoReferences

	aVarWithTwoReferences := 'use the variable here also'.
! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 4/26/2011 07:38'!
methodWithReferenceToVariables

	aVarWithOneReference := 'use the variable in this method only'.
	aVarWithTwoReferences := 'use the variable in this method and in one other method'.
! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 2/11/2012 17:50'!
setAVariable: oop
	aVariable := oop! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 7/9/2012 19:49'!
setBreakSelector: aString
	"breakSelector is an instance variable and should not be declared as a local in
	the generated code"
	breakSelector := aString! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 2/18/2014 20:13'!
setInstanceVariableWithAnAccessorMethod
	objectMemory setAVariable: (objectMemory remap: objectMemory getNilObj).
! !

!SlangTestSupportInterpreter methodsFor: 'local and instance vars' stamp: 'dtl 11/24/2014 22:11'!
sizeOfFoo
	^ self sizeOf: #Foo! !

!SlangTestSupportInterpreter class methodsFor: 'translation' stamp: 'dtl 3/18/2013 18:50'!
buildCodeGeneratorInlined: doInlining
	"Build a CCodeGenerator for this class."

	 | cg |
	cg := CCodeGeneratorGlobalStructure new initialize.
	cg declareMethodsStatic: false.
	cg permitMethodPruning: true.
	cg uncheckedAbstractMethods addAll: self abstractSelectors.
	^self initializeCodeGenerator: cg

! !

!SlangTestSupportInterpreter class methodsFor: 'translation' stamp: 'dtl 2/8/2014 14:08'!
isNonArgumentImplicitReceiverVariableName: aString
	^aString = 'objectMemory'
		or: [super isNonArgumentImplicitReceiverVariableName: aString]
! !

!SlangTestSupportInterpreter class methodsFor: 'translation' stamp: 'dtl 8/22/2011 21:06'!
requiredMethodNames
	"return the list of method names that should be retained for export or other support reasons"
	^self selectors
! !

!SlangTestSupportInterpreter class methodsFor: 'translation' stamp: 'dtl 6/18/2012 00:21'!
uncheckedAbstractSelectors
	^ super uncheckedAbstractSelectors, ObjectMemory uncheckedAbstractSelectors! !

!SlangTestSupportInterpreter class methodsFor: 'instance creation' stamp: 'dtl 3/18/2013 14:31'!
inline: flag

	"Transcript show: (self inline: true) asCString"

	^self new inline: flag! !

!SlangTestSupportSSIP methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 22:21'!
anAbstractMethod

	self subclassResponsibility! !

!SlangTestSupportSSIP methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:19'!
doNotGenerateByMethod
	"SlangTestSupportInterpreter asCString: #doNotGenerateByMethod"

	self returnTypeC: #int.
	self doNotGenerate.
	^ 2 + 2
! !

!SlangTestSupportSSIP methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:11'!
doNotGenerateByPragma
	"SlangTestSupportInterpreter asCString: #doNotGenerateByPragma"

	<doNotGenerate>
	<returnTypeC: #int>
	^ 2 + 2
! !

!SlangTestSupportSSIP methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
asCString

	| stream |
	stream := ReadWriteStream on: String new.
	self cg emitCCodeOn: stream doAssertions: true.
	^ stream contents
! !

!SlangTestSupportSSIP methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:29'!
asCString: selector

	| method stream |
	method := self cg methodNamed: selector.
	method ifNil: [^ 'No source has been generated'].
	stream := ReadWriteStream on: String new.
	method emitCCodeOn: stream generator: cg.
	^ stream contents
! !

!SlangTestSupportSSIP methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
cg
	"Lazy initialize, once per test"

	cg ifNil: [ObjectMemory initialize; initializeConstants.
		cg := self class buildCodeGeneratorInlined: inlineFlag = true.
		cg prepareMethodsInlined: inlineFlag = true doAssertions: true].
	^ cg! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodEmbeddedWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i |
		1 to: self methodWithIntegerResult do: [:k | ]].
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodTwiceWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodTwiceWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i | ].
	1 to: self methodWithIntegerResult do: [:i | ].
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:51'!
callMethodWithLoopLimitThatIsNotModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatIsNotModified: aVar.
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/5/2013 00:01'!
methodWithIntegerResult
	^127 + 5! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 2/18/2014 20:15'!
methodWithLoopLimitThatIsNotModified: arrayObj

	0 to: 10 do: [:i | self storePointerUnchecked: i ofObject: arrayObj withValue: 0]
! !

!SlangTestSupportSSIP methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 23:39'!
methodWithLoopLimitThatMightBeModified: arrayObj

	0 to: (self lengthOf: arrayObj) do:
	[:i | self storePointerUnchecked: i ofObject: arrayObj withValue: nil]
! !

!SlangTestSupportSSIP methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:29'!
declareExportFalseByMethod
	"SlangTestSupportSSIP asCString: #declareExportFalseByMethod"

	self export: false
! !

!SlangTestSupportSSIP methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:29'!
declareExportFalseByPragma
	"SlangTestSupportSSIP asCString: #declareExportFalseByPragma"

	<export: false>
! !

!SlangTestSupportSSIP methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:21'!
declareExportTrueByMethod
	"SlangTestSupportSSIP asCString: #declareExportTrueByMethod"

	self export: true
! !

!SlangTestSupportSSIP methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:21'!
declareExportTrueByPragma
	"SlangTestSupportSSIP asCString: #declareExportTrueByPragma"

	<export: true>
! !

!SlangTestSupportSSIP methodsFor: 'parameter declarations' stamp: 'dtl 3/8/2013 19:40'!
declareInt: anInt wordPointer: pointerToWords
	"The pointerToWords parameter should be (unsigned *) as a result of the WordArray
	declaration in primitive:parameters: and the local declaration for pointerToWords should
	match this data type. For buggy code generator this is not the case."

	self var: #pointerToWords type: 'unsigned char * '. "intentional red herring, no effect"
	self primitive: 'primitiveShowHostWindowRect' parameters: #(SmallInteger WordArray).

	"Incorrect output, demonstrating code generator bug:
	
EXPORT(sqInt) primitiveShowHostWindowRect(void) {
	sqInt anInt;
	usqInt *pointerToWords;

	anInt = interpreterProxy->stackIntegerValue(1);
	interpreterProxy->success(interpreterProxy->isWords(interpreterProxy->stackValue(0)));
	pointerToWords = ((unsigned *) (interpreterProxy->firstIndexableField(interpreterProxy->stackValue(0))));
	if (interpreterProxy->failed()) {
		return null;
	}
	if (interpreterProxy->failed()) {
		return null;
	}
	interpreterProxy->pop(2);
	return null;
}
"! !

!SlangTestSupportSSIP methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:29'!
declareStaticFalseByMethod
	"SlangTestSupportSSIP asCString: #declareStaticFalseByMethod"

	self static: false
! !

!SlangTestSupportSSIP methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:30'!
declareStaticFalseByPragma
	"SlangTestSupportSSIP asCString: #declareStaticFalseByPragma"

	<static: false>
! !

!SlangTestSupportSSIP methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:29'!
declareStaticTrueByMethod
	"SlangTestSupportSSIP asCString: #declareStaticTrueByMethod"

	self static: true
! !

!SlangTestSupportSSIP methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:30'!
declareStaticTrueByPragma
	"SlangTestSupportSSIP asCString: #declareStaticTrueByPragma"

	<static: true>
! !

!SlangTestSupportSSIP methodsFor: 'initialize' stamp: 'dtl 3/18/2013 14:54'!
inline: flag
	inlineFlag := flag! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/19/2010 11:50'!
inlineByMethod
	"SlangTestSupportSSIP asCString: #inlineByMethod"
	"SlangTestSupportSSIP asInlinedCString: #inlineByMethod"

	| bar foo |
	foo := self methodThatShouldBeInlinedByMethod.
	bar := self methodThatShouldNotBeInlinedByMethod! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/19/2010 11:50'!
inlineByPragma
	"SlangTestSupportSSIP asCString: #inlineByPragma"
	"SlangTestSupportSSIP asInlinedCString: #inlineByPragma"

	| bar foo |
	foo := self methodThatShouldBeInlinedByPragma.
	bar := self methodThatShouldNotBeInlinedByPragma! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/18/2010 17:59'!
methodThatShouldBeInlinedByMethod

	self inline: true.
	^ #foo! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldBeInlinedByPragma

	<inline: true>
	^ #foo! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByMethod

	self inline: false.
	^ #bar! !

!SlangTestSupportSSIP methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByPragma

	<inline: false>
	^ #bar! !

!SlangTestSupportSSIP methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:50'!
returnTypeByMethod
	"SlangTestSupportSSIP asCString: #returnTypeByMethod"

	self returnTypeC: 'char *'.
! !

!SlangTestSupportSSIP methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:51'!
returnTypeByPragma
	"SlangTestSupportSSIP asCString: #returnTypeByPragma"

	<returnTypeC: 'char *'>
! !

!SlangTestSupportSSIP methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:51'!
varDefByMethod
	"SlangTestSupportSSIP asCString: #varDefByMethod"

	| foo bar |
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportSSIP methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 22:25'!
varDefByMethodAndPragma
	"SlangTestSupportSSIP asCString: #varDefByMethodAndPragma"

	| foo bar baz fum |
	<var: #baz type: 'float'>
	<var: #fum declareC: 'double fum'>
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportSSIP methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 12:05'!
varDefByPragma
	"SlangTestSupportSSIP asCString: #varDefByPragma"

	| foo bar |
	<var: #foo type: 'char *'>
	<var: #bar declareC: 'unsigned int * bar'>
! !

!SlangTestSupportSSIP class methodsFor: 'translation' stamp: 'dtl 3/18/2013 18:52'!
buildCodeGeneratorInlined: doInlining
	"Build a CCodeGenerator for this class."

	 | cg |
	cg := SmartSyntaxPluginCodeGenerator new initialize.
	cg declareMethodsStatic: false.
	cg permitMethodPruning: true.
	cg uncheckedAbstractMethods addAll: self abstractSelectors.
	^self initializeCodeGenerator: cg

! !

!SlangTestSupportSSIP class methodsFor: 'translation' stamp: 'dtl 8/22/2011 21:06'!
requiredMethodNames
	"return the list of method names that should be retained for export or other support reasons"
	^self selectors
! !

!SlangTestSupportSSIP class methodsFor: 'translation' stamp: 'dtl 3/19/2013 00:44'!
shouldBeTranslated
	"Translated only for unit test support. The generated C module is not expected
	to be compiled."
	^false! !

!SlangTestSupportSSIP class methodsFor: 'instance creation' stamp: 'dtl 3/18/2013 14:49'!
inline: flag

	"Transcript show: (self inline: true) asCString"

	^self new inline: flag! !

!SlangTestSupportPlugin methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 22:21'!
anAbstractMethod

	self subclassResponsibility! !

!SlangTestSupportPlugin methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:19'!
doNotGenerateByMethod
	"SlangTestSupportInterpreter asCString: #doNotGenerateByMethod"

	self returnTypeC: #int.
	self doNotGenerate.
	^ 2 + 2
! !

!SlangTestSupportPlugin methodsFor: 'other declarations' stamp: 'dtl 8/25/2011 08:11'!
doNotGenerateByPragma
	"SlangTestSupportInterpreter asCString: #doNotGenerateByPragma"

	<doNotGenerate>
	<returnTypeC: #int>
	^ 2 + 2
! !

!SlangTestSupportPlugin methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
asCString

	| stream |
	stream := ReadWriteStream on: String new.
	self cg emitCCodeOn: stream doAssertions: true.
	^ stream contents
! !

!SlangTestSupportPlugin methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:29'!
asCString: selector

	| method stream |
	method := self cg methodNamed: selector.
	method ifNil: [^ 'No source has been generated'].
	stream := ReadWriteStream on: String new.
	method emitCCodeOn: stream generator: cg.
	^ stream contents
! !

!SlangTestSupportPlugin methodsFor: 'translation' stamp: 'dtl 3/18/2013 14:28'!
cg
	"Lazy initialize, once per test"

	cg ifNil: [ObjectMemory initialize; initializeConstants.
		cg := self class buildCodeGeneratorInlined: inlineFlag = true.
		cg prepareMethodsInlined: inlineFlag = true doAssertions: true].
	^ cg! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodEmbeddedWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i |
		1 to: self methodWithIntegerResult do: [:k | ]].
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodTwiceWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:38'!
callMethodTwiceWithSendInLoopLimit

	<export: true>
	1 to: self methodWithIntegerResult do: [:i | ].
	1 to: self methodWithIntegerResult do: [:i | ].
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:51'!
callMethodWithLoopLimitThatIsNotModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatIsNotModified: aVar.
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 20:49'!
callMethodWithLoopLimitThatMightBeModified

	<export: true>
	| aVar |
	aVar := 'foo'.
	self methodWithLoopLimitThatMightBeModified: aVar.
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 21:37'!
methodWithIntegerResult
	"Translates to nonsense, but use this to illustrate the point"
	^(Random new next * 100) asInteger! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 2/18/2014 20:15'!
methodWithLoopLimitThatIsNotModified: arrayObj

	0 to: 10 do: [:i | self storePointerUnchecked: i ofObject: arrayObj withValue: 0]
! !

!SlangTestSupportPlugin methodsFor: 'loop limits' stamp: 'dtl 4/4/2013 23:39'!
methodWithLoopLimitThatMightBeModified: arrayObj

	0 to: (self lengthOf: arrayObj) do:
	[:i | self storePointerUnchecked: i ofObject: arrayObj withValue: nil]
! !

!SlangTestSupportPlugin methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:29'!
declareExportFalseByMethod
	"SlangTestSupport asCString: #declareExportFalseByMethod"

	self export: false
! !

!SlangTestSupportPlugin methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:29'!
declareExportFalseByPragma
	"SlangTestSupport asCString: #declareExportFalseByPragma"

	<export: false>
! !

!SlangTestSupportPlugin methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:21'!
declareExportTrueByMethod
	"SlangTestSupport asCString: #declareExportTrueByMethod"

	self export: true
! !

!SlangTestSupportPlugin methodsFor: 'export declaration' stamp: 'dtl 9/19/2010 12:21'!
declareExportTrueByPragma
	"SlangTestSupport asCString: #declareExportTrueByPragma"

	<export: true>
! !

!SlangTestSupportPlugin methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:29'!
declareStaticFalseByMethod
	"SlangTestSupport asCString: #declareStaticFalseByMethod"

	self static: false
! !

!SlangTestSupportPlugin methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:30'!
declareStaticFalseByPragma
	"SlangTestSupport asCString: #declareStaticFalseByPragma"

	<static: false>
! !

!SlangTestSupportPlugin methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:29'!
declareStaticTrueByMethod
	"SlangTestSupport asCString: #declareStaticTrueByMethod"

	self static: true
! !

!SlangTestSupportPlugin methodsFor: 'static declaration' stamp: 'dtl 9/19/2010 12:30'!
declareStaticTrueByPragma
	"SlangTestSupport asCString: #declareStaticTrueByPragma"

	<static: true>
! !

!SlangTestSupportPlugin methodsFor: 'initialize' stamp: 'dtl 3/18/2013 14:48'!
inline: flag
	inlineFlag := flag! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/19/2010 11:50'!
inlineByMethod
	"SlangTestSupport asCString: #inlineByMethod"
	"SlangTestSupport asInlinedCString: #inlineByMethod"

	| bar foo |
	foo := self methodThatShouldBeInlinedByMethod.
	bar := self methodThatShouldNotBeInlinedByMethod! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/19/2010 11:50'!
inlineByPragma
	"SlangTestSupport asCString: #inlineByPragma"
	"SlangTestSupport asInlinedCString: #inlineByPragma"

	| bar foo |
	foo := self methodThatShouldBeInlinedByPragma.
	bar := self methodThatShouldNotBeInlinedByPragma! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/18/2010 17:59'!
methodThatShouldBeInlinedByMethod

	self inline: true.
	^ #foo! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldBeInlinedByPragma

	<inline: true>
	^ #foo! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByMethod

	self inline: false.
	^ #bar! !

!SlangTestSupportPlugin methodsFor: 'inlining' stamp: 'dtl 9/18/2010 18:01'!
methodThatShouldNotBeInlinedByPragma

	<inline: false>
	^ #bar! !

!SlangTestSupportPlugin methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:50'!
returnTypeByMethod
	"SlangTestSupport asCString: #returnTypeByMethod"

	self returnTypeC: 'char *'.
! !

!SlangTestSupportPlugin methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:51'!
returnTypeByPragma
	"SlangTestSupport asCString: #returnTypeByPragma"

	<returnTypeC: 'char *'>
! !

!SlangTestSupportPlugin methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 11:51'!
varDefByMethod
	"SlangTestSupport asCString: #varDefByMethod"

	| foo bar |
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportPlugin methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 22:25'!
varDefByMethodAndPragma
	"SlangTestSupportPlugin asCString: #varDefByMethodAndPragma"

	| foo bar baz fum |
	<var: #baz type: 'float'>
	<var: #fum declareC: 'double fum'>
	self var: #foo type: 'char *'.
	self var: #bar declareC: 'unsigned int * bar'
! !

!SlangTestSupportPlugin methodsFor: 'type declaration' stamp: 'dtl 9/19/2010 12:05'!
varDefByPragma
	"SlangTestSupport asCString: #varDefByPragma"

	| foo bar |
	<var: #foo type: 'char *'>
	<var: #bar declareC: 'unsigned int * bar'>
! !

!SlangTestSupportPlugin class methodsFor: 'translation' stamp: 'dtl 3/18/2013 18:51'!
buildCodeGeneratorInlined: doInlining
	"Build a CCodeGenerator for this class."

	 | cg |
	cg := VMPluginCodeGenerator new initialize.
	cg declareMethodsStatic: false.
	cg permitMethodPruning: true.
	cg uncheckedAbstractMethods addAll: self abstractSelectors.
	^self initializeCodeGenerator: cg

! !

!SlangTestSupportPlugin class methodsFor: 'translation' stamp: 'dtl 8/22/2011 21:06'!
requiredMethodNames
	"return the list of method names that should be retained for export or other support reasons"
	^self selectors
! !

!SlangTestSupportPlugin class methodsFor: 'translation' stamp: 'dtl 3/19/2013 00:44'!
shouldBeTranslated
	"Translated only for unit test support. The generated C module is not expected
	to be compiled."
	^false! !

!SlangTestSupportPlugin class methodsFor: 'instance creation' stamp: 'dtl 3/18/2013 14:49'!
inline: flag

	"Transcript show: (self inline: true) asCString"

	^self new inline: flag! !
VMConstantsTest initialize!
