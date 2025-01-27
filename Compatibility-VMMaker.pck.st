'From Cuis 6.0 [latest update: #5559] on 30 November 2022 at 8:54:18 am'!
'Description '!
!provides: 'Compatibility-VMMaker' 1 6!
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

!classDefinition: #FileStream category: 'Compatibility-VMMaker'!
ReadWriteStream subclass: #FileStream
	instanceVariableNames: 'rwmode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'FileStream class' category: 'Compatibility-VMMaker'!
FileStream class
	instanceVariableNames: ''!

!classDefinition: #StandardFileStream category: 'Compatibility-VMMaker'!
FileStream subclass: #StandardFileStream
	instanceVariableNames: 'name fileID buffer1'
	classVariableNames: 'Registry'
	poolDictionaries: ''
	category: 'Compatibility-VMMaker'!
!classDefinition: 'StandardFileStream class' category: 'Compatibility-VMMaker'!
StandardFileStream class
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


!FileStream commentStamp: '<historical>' prior: 0!
I represent a Stream that accesses a FilePage from a File. One use for my instance is to access larger "virtual Strings" than can be stored contiguously in main memory. I restrict the objects stored and retrieved to be Integers or Characters. An end of file pointer terminates reading; it can be extended by writing past it, or the file can be explicitly truncated.
	
To use the file system for most applications, you typically create a FileStream. This is done by sending a message to a FileDirectory (file:, oldFile:, newFile:, rename:newName:) which creates a (sub)instance of me. Accesses to the file are then done via this instance.

*** On DOS, files cannot be shortened!!  ***  To overwrite a file with a shorter one, first delete the old file (FileDirectory deleteFilePath: 'Hard Disk:aFolder:dataFolder:foo') or (aFileDirectory deleteFileNamed: 'foo').  Then write your new shorter version.

Usually, the active class is StandardFileStream. But regardless of this, it is conventional to reference FileStream in code. This allows replacing StandardFileStream with something else (and not a real file in the host OS file system) if needed.!

!StandardFileStream commentStamp: 'ul 12/6/2009 05:13' prior: 0!
Provides a simple, platform-independent, interface to a file system. The instance variable rwmode, inherited from class PositionableStream, here is used to hold a Boolean -- true means opened for read-write, false means opened for read-only.  2/12/96 sw

I implement a simple read buffering scheme with the variables defined in PositionableStream (which are unused in me otherwise) in the following way:
	collection	<ByteString> or <ByteArray>	This is the buffer.
	position	<Integer>	The relative position in the buffer. Greater or equal to zero.
	readLimit	<Integer>	The number of bytes buffered. Greater or equal to zero.
Read buffering is enabled with #enableReadBuffering, disabled with #disableReadBuffering and it is enabled by default. The buffer is filled when a read attempt of an unbuffered absolute position is requested, or when a negative repositioning is made (with #position: with an argument < than the current absolute position) to an absolute position which is not buffered. In the first case, the buffer is positioned to the given absolute position. In the latter case the repositioning is made to the requested absolute position minus fourth of the buffer size. This means that further small negative repositionings won't result in buffer flushing. This is really useful when filing in code.
The read buffer is flushed (#flushReadBuffer) whenever a write attempt is made.
The buffer state is valid if and only if collection is not nil and position < readLimit.!

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

!FileStream methodsFor: 'accessing' stamp: 'ar 8/6/2001 18:34'!
contents
	"Return the contents of the receiver. Do not close or otherwise touch the receiver. Return data in whatever mode the receiver is in (e.g., binary or text)."
	| s savePos |
	savePos _ self position.
	self position: 0.
	s _ self next: self size.
	self position: savePos.
	^s! !

!FileStream methodsFor: 'accessing' stamp: 'ST-80 5/31/1983 9:10:35'!
contentsOfEntireFile
	"Read all of the contents of the receiver."

	| s |
	self readOnly.
	self reset.
	s _ self next: self size.
	self close.
	^s! !

!FileStream methodsFor: 'accessing' stamp: 'ST-80 5/31/1983 9:10:35'!
next
	(position >= readLimit and: [self atEnd])
		ifTrue: [^nil]
		ifFalse: [^collection at: (position _ position + 1)]! !

!FileStream methodsFor: 'accessing' stamp: 'nice 11/22/2009 18:11'!
next: anInteger

	| newCollection howManyRead increment |
	newCollection := self collectionSpecies new: anInteger.
	howManyRead := 0.
	[howManyRead < anInteger] whileTrue:
		[self atEnd ifTrue:
			[(howManyRead + 1) to: anInteger do: [:i | newCollection at: i put: (self next)].
			^newCollection].
		increment := (readLimit - position) min: (anInteger - howManyRead).
		newCollection replaceFrom: (howManyRead + 1)
			to: (howManyRead := howManyRead + increment)
			with: collection
			startingAt: (position + 1).
		position := position + increment].
	^newCollection! !

!FileStream methodsFor: 'accessing' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
nextPut: aByte
	"1/31/96 sw: subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'accessing' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
nextPutAll: aCollection
	"1/31/96 sw: made subclass responsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'accessing' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
size
	"Answer the size of the file in characters.
	 1/31/96 sw: made subclass responsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'testing' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
atEnd
	"Answer true if the current position is >= the end of file position.
	 1/31/96 sw: subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'testing' stamp: 'jmv 7/4/2016 22:38'!
isFileStream
	^true! !

!FileStream methodsFor: 'positioning' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
position
	"Answer the current character position in the file.
	 1/31/96 sw: subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'positioning' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
position: pos
	"Set the current character position in the file to pos.
	 1/31/96 sw: made subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'positioning' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
reset
	"Set the current character position to the beginning of the file.
	 1/31/96 sw: subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'positioning' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
setToEnd
	"Set the current character position to the end of the File. The same as
	self position: self size.  1/31/96 sw: made subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'positioning' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
skip: n
	"Set the character position to n characters from the current position.
	Error if not enough characters left in the file
	1/31/96 sw: made subclassResponsibility."
 
	self subclassResponsibility! !

!FileStream methodsFor: 'positioning' stamp: 'JMM 5/24/2001 22:58'!
truncate: pos
	"Truncate file to pos"

	self subclassResponsibility! !

!FileStream methodsFor: 'printing' stamp: 'tk 12/5/2001 09:12'!
longPrintOn: aStream
	"Do nothing, so it will print short.  Called to print the error file.  If the error was in a file operation, we can't read the contents of that file.  Just print its name instead."
! !

!FileStream methodsFor: 'printing' stamp: 'jmv 3/13/2012 12:34'!
longPrintOn: aStream limitedTo: sizeLimit indent: indent

	"Do nothing, so it will print short.  Called to print the error file.  If the error was in a file operation, we can't read the contents of that file.  Just print its name instead."

	aStream newLine! !

!FileStream methodsFor: 'file open/close' stamp: 'jm 9/21/1998 13:02'!
close
	"Close this file."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file open/close' stamp: 'jm 9/21/1998 13:02'!
closed
	"Answer true if this file is closed."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file open/close' stamp: 'jm 9/21/1998 13:03'!
flush
	"When writing, flush the current buffer out to disk."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file open/close' stamp: 'jm 9/21/1998 13:04'!
reopen
	"Ensure that the receiver is open, re-open it if necessary."
	"Details: Files that were open when a snapshot occurs are no longer valid when the snapshot is resumed. This operation re-opens the file if that has happened."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file modes' stamp: 'jm 9/21/1998 12:59'!
readOnly
	"Set this file's mode to read-only."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file modes' stamp: 'jm 9/21/1998 13:00'!
readWrite
	"Set this file's mode to read-write."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file modes' stamp: 'jmv 12/9/2013 17:48'!
useBytes
	"Set this file to binary mode."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file modes' stamp: 'jmv 12/9/2013 17:49'!
useCharacters
	"Set this file to ascii (text) mode."

	self subclassResponsibility
! !

!FileStream methodsFor: 'file accessing' stamp: 'jmv 10/16/2015 13:05'!
localName
	self subclassResponsibility! !

!FileStream methodsFor: 'file accessing' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
name
	"Answer the name of the file for the page the receiver is streaming over.  1/31/96 sw: made subclassResponsibility"

	self subclassResponsibility! !

!FileStream methodsFor: 'fileIn/Out' stamp: 'jmv 1/22/2019 12:27:38'!
fileIn
	"Guarantee that the receiver is readOnly before fileIn for efficiency and
	to eliminate remote sharing conflicts."

	self readOnly.
	self fileInAnnouncing: 'Loading ', self localName.
	Smalltalk cleanOutUndeclared.
	Undeclared notEmpty ifTrue: [
		('Undeclared: ', Undeclared printString) print ].
! !

!FileStream class methodsFor: 'instance creation' stamp: 'jmv 8/28/2011 21:59'!
new
	^ self basicNew initialize! !

!FileStream class methodsFor: 'concrete classes' stamp: 'Squeak1.1 9/23/1996 20:34:59'!
concreteStream
	"Who should we really direct class queries to?  9/21/96 tk"
	^ StandardFileStream! !

!StandardFileStream methodsFor: 'open/close' stamp: 'ul 12/4/2009 07:18'!
close
	"Close this file."

	fileID ifNotNil: [
		collection ifNotNil: [
			readLimit := position := 0 ].
		self primClose: fileID.
		self unregister.
		fileID := nil].
! !

!StandardFileStream methodsFor: 'open/close' stamp: 'ul 12/6/2009 02:45'!
closed
	"Answer true if this file is closed."

	^ fileID == nil or: [ (self primSizeNoError: fileID) == nil ]
! !

!StandardFileStream methodsFor: 'open/close' stamp: 'jm 9/21/1998 16:20'!
ensureOpen
	"Make sure that this file really is open."

	self closed ifTrue: [^ self reopen].
	(self primSizeNoError: fileID) ifNotNil: [^ self].
	self reopen.
! !

!StandardFileStream methodsFor: 'open/close' stamp: 'jmv 6/9/2021 12:43:48'!
open: fileName forWrite: writeMode 
	"Open the file with the given name. If writeMode is true, allow writing, otherwise open the file in read-only mode."
	"Changed to do a GC and retry before failing ar 3/21/98 17:25"
	fileID _ StandardFileStream retryWithGC: [ self primOpen: (fileName asUtf8: true) writable: writeMode ]
					until: [ :id | id notNil ]
					forFileNamed: fileName.
	fileID ifNil: [^ nil].  "allows sender to detect failure"
	name _ fileName.
	"jmv: Register after setting name. Name is assumed to be defined for registered objects."
	self register.
	rwmode _ writeMode.
	buffer1 _ String new: 1.
	self enableReadBuffering
! !

!StandardFileStream methodsFor: 'open/close' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
openReadOnly
	"Open the receiver as a read-only file.  1/31/96 sw"

	^ self open: name forWrite: false! !

!StandardFileStream methodsFor: 'open/close' stamp: 'jmv 12/14/2013 11:02'!
reopen
	"Close and reopen this file. The file position is reset to zero."
	"Details: Files that were open when a snapshot occurs are no longer valid when the snapshot is resumed. This operation re-opens the file if that has happened."

	| binary |
	binary _ self isBinary.
	fileID ifNotNil: [
		collection ifNotNil: [
			position < readLimit ifTrue: [
				self flushReadBuffer ] ].
		self primCloseNoError: fileID ].
	self open: name forWrite: rwmode.
	binary ifTrue: [self binary]
! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
isBinary
	^ buffer1 class == ByteArray! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'tk 11/4/1998 19:17'!
isReadOnly

	^ rwmode not
! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'jm 9/21/1998 13:56'!
readOnly
	"Make this file read-only."

	rwmode _ false.
! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'jm 9/21/1998 13:56'!
readWrite
	"Make this file writable."

	rwmode _ true.
! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'jmv 12/9/2013 17:48'!
useBytes
	buffer1 := ByteArray new: 1.
	collection ifNotNil: [ collection := collection asByteArray ]! !

!StandardFileStream methodsFor: 'properties-setting' stamp: 'jmv 12/9/2013 17:49'!
useCharacters
	"opposite of binary"
	buffer1 := String new: 1.
	collection ifNotNil: [ collection := collection asString ]! !

!StandardFileStream methodsFor: 'access' stamp: 'jmv 10/27/2015 17:07'!
directory
	"Return the directory containing this file."

	^ self fileEntry parent! !

!StandardFileStream methodsFor: 'access' stamp: 'jmv 10/27/2015 17:07'!
fileEntry
	^ self fullName asFileEntry! !

!StandardFileStream methodsFor: 'access' stamp: 'jm 9/21/1998 14:19'!
fullName
	"Answer this file's full path name."

	^ name
! !

!StandardFileStream methodsFor: 'access' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
isDirectory
	"Answer whether the receiver represents a directory.  For the post-transition case, uncertain what to do.  2/14/96 sw"
	^ false! !

!StandardFileStream methodsFor: 'access' stamp: 'jmv 4/2/2016 23:38'!
lineEndConvention: aSymbol
	"ignore it"! !

!StandardFileStream methodsFor: 'access' stamp: 'jmv 10/27/2015 17:08'!
localName
	^ self fileEntry name! !

!StandardFileStream methodsFor: 'access' stamp: 'jm 9/21/1998 14:19'!
name
	"Answer this file's full path name."

	^ name
! !

!StandardFileStream methodsFor: 'access' stamp: 'jmv 3/1/2010 13:35'!
peekFor: item 
	"Answer false and do not advance if the next element is not equal to item, or if this stream is at the end.  If the next element is equal to item, then advance over it and return true"
	| next |
	"self atEnd ifTrue: [^ false]. -- SFStream will give nil"
	(next _ self next) ifNil: [^ false].
	item = next ifTrue: [^ true].
	self skip: -1.
	^ false! !

!StandardFileStream methodsFor: 'access' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
printOn: aStream
	"Put a printed version of the receiver onto aStream.  1/31/96 sw"

	aStream nextPutAll: self class name; nextPutAll: ': '; print: name! !

!StandardFileStream methodsFor: 'access' stamp: 'ar 6/16/2002 18:58'!
reset
	self ensureOpen.
	self position: 0.! !

!StandardFileStream methodsFor: 'access' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
size
	"Answer the size of the file in characters.  2/12/96 sw"

	^ self primSize: fileID! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/3/2009 06:44'!
atEnd
	"Answer whether the receiver is at its end.  "
	
	collection ifNotNil: [
		position < readLimit ifTrue: [ ^false ] ].
	^self primAtEnd: fileID! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 10/8/2017 17:02:10'!
basicNext
	"Answer the next byte or character (depending on mode) from this file, or nil if at the end of the file."
	
	| count |
	collection ifNotNil: [
		position < readLimit 
			ifFalse: [ 
				readLimit := self primRead: fileID into: collection startingAt: 1 count: collection size.
				position := 0.
				readLimit = 0 ifTrue: [ ^nil ] ].
		^collection at: (position := position + 1) ].	
	count _ self primRead: fileID into: buffer1 startingAt: 1 count: 1.
	^count = 1
		ifTrue: [ buffer1 at: 1 ]! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 9/5/2016 21:14:06'!
crc16
	"Copied from String>>crc16"
	
	| buffer crc |
	self reset.
	buffer _ String new: 2000.
	crc _ 0.
	[ self atEnd ] whileFalse: [
		buffer _ self nextInto: buffer.
		buffer do: [:c |
			crc _ (crc bitShift: -8) bitXor: (
			 #(	16r0000	16rC0C1	16rC181	16r0140	16rC301	16r03C0	16r0280	16rC241
				16rC601	16r06C0	16r0780	16rC741	16r0500	16rC5C1	16rC481	16r0440
				16rCC01	16r0CC0	16r0D80	16rCD41	16r0F00	16rCFC1	16rCE81	16r0E40
				16r0A00	16rCAC1	16rCB81	16r0B40	16rC901	16r09C0	16r0880	16rC841
				16rD801	16r18C0	16r1980	16rD941	16r1B00	16rDBC1	16rDA81	16r1A40
				16r1E00	16rDEC1	16rDF81	16r1F40	16rDD01	16r1DC0	16r1C80	16rDC41
				16r1400	16rD4C1	16rD581	16r1540	16rD701	16r17C0	16r1680	16rD641
				16rD201	16r12C0	16r1380	16rD341	16r1100	16rD1C1	16rD081	16r1040
				16rF001	16r30C0	16r3180	16rF141	16r3300	16rF3C1	16rF281	16r3240
				16r3600	16rF6C1	16rF781	16r3740	16rF501	16r35C0	16r3480	16rF441
				16r3C00	16rFCC1	16rFD81	16r3D40	16rFF01	16r3FC0	16r3E80	16rFE41
				16rFA01	16r3AC0	16r3B80	16rFB41	16r3900	16rF9C1	16rF881	16r3840
				16r2800	16rE8C1	16rE981	16r2940	16rEB01	16r2BC0	16r2A80	16rEA41
				16rEE01	16r2EC0	16r2F80	16rEF41	16r2D00	16rEDC1	16rEC81	16r2C40
				16rE401	16r24C0	16r2580	16rE541	16r2700	16rE7C1	16rE681	16r2640
				16r2200	16rE2C1	16rE381	16r2340	16rE101	16r21C0	16r2080	16rE041
				16rA001	16r60C0	16r6180	16rA141	16r6300	16rA3C1	16rA281	16r6240
				16r6600	16rA6C1	16rA781	16r6740	16rA501	16r65C0	16r6480	16rA441
				16r6C00	16rACC1	16rAD81	16r6D40	16rAF01	16r6FC0	16r6E80	16rAE41
				16rAA01	16r6AC0	16r6B80	16rAB41	16r6900	16rA9C1	16rA881	16r6840
				16r7800	16rB8C1	16rB981	16r7940	16rBB01	16r7BC0	16r7A80	16rBA41
				16rBE01	16r7EC0	16r7F80	16rBF41	16r7D00	16rBDC1	16rBC81	16r7C40
				16rB401	16r74C0	16r7580	16rB541	16r7700	16rB7C1	16rB681	16r7640
				16r7200	16rB2C1	16rB381	16r7340	16rB101	16r71C0	16r7080	16rB041
				16r5000	16r90C1	16r9181	16r5140	16r9301	16r53C0	16r5280	16r9241
				16r9601	16r56C0	16r5780	16r9741	16r5500	16r95C1	16r9481	16r5440
				16r9C01	16r5CC0	16r5D80	16r9D41	16r5F00	16r9FC1	16r9E81	16r5E40
				16r5A00	16r9AC1	16r9B81	16r5B40	16r9901	16r59C0	16r5880	16r9841
				16r8801	16r48C0	16r4980	16r8941	16r4B00	16r8BC1	16r8A81	16r4A40
				16r4E00	16r8EC1	16r8F81	16r4F40	16r8D01	16r4DC0	16r4C80	16r8C41
				16r4400	16r84C1	16r8581	16r4540	16r8701	16r47C0	16r4680	16r8641
				16r8201	16r42C0	16r4380	16r8341	16r4100	16r81C1	16r8081	16r4040)
			 at: ((crc bitXor: c numericValue) bitAnd: 16rFF) + 1) 
		].
	].
	^crc! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ls 8/23/2003 16:44'!
findString: string
	"Fast version of #upToAll: to find a String in a file starting from the beginning.
	Returns the position and also sets the position there.
	If string is not found 0 is returned and position is unchanged."

	| pos buffer count oldPos sz |
	oldPos _ self position.
	self reset.
	sz _ self size.
	pos _ 0.
	buffer _ String new: 2000.
	[ buffer := self nextInto: buffer.
	(count _ buffer findString: string) > 0
		ifTrue: ["Found the string part way into buffer"
			self position: pos.
			self next: count - 1.
			^self position ].
	pos _ ((pos + 2000 - string size) min: sz).
	self position: pos.
	pos = sz] whileFalse.
	"Never found it, and hit end of file"
	self position: oldPos.
	^0! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'gk 10/2/2003 09:47'!
findStringFromEnd: string
	"Fast version to find a String in a file starting from the end.
	Returns the position and also sets the position there.
	If string is not found 0 is returned and position is unchanged."

	| pos buffer count oldPos |
	oldPos _ self position.
	self setToEnd.
	pos _ self position.
	[ pos _ ((pos - 2000 + string size) max: 0).  "the [+ string size] allows for the case where the end of the search string is at the beginning of the current buffer"
	self position: pos.
	buffer _ self next: 2000.
	(count _ buffer findString: string) > 0
		ifTrue: ["Found the string part way into buffer"
			self position: pos.
			self next: count-1.  "use next instead of position:, so that CrLfFileStream can do its magic if it is being used"
			^self position].
	pos = 0] whileFalse.
	"Never found it, and hit beginning of file"
	self position: oldPos.
	^0! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ar 2/6/2001 17:59'!
flush
	"Flush pending changes"
	^self primFlush: fileID! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'mir 2/25/2000 12:37'!
next
	"Answer the next byte from this file, or nil if at the end of the file."

	^ self basicNext! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/5/2009 07:19'!
next: n
	"Return a string with the next n characters of the filestream in it.  1/31/96 sw"
	^ self nextInto: (self collectionSpecies new: n)! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/6/2009 04:14'!
next: n into: aString startingAt: startIndex
	"Read n bytes into the given string.
	Return aString or a partial copy if less than
	n elements have been read."
	
	| count  newN newStartIndex |
	collection 
		ifNil: [ 
			newN := n.
			newStartIndex := startIndex ]
		ifNotNil: [
			aString class isBytes 
				ifFalse: [ 
					position < readLimit ifTrue: [ self flushReadBuffer ].
					newN := n.
					newStartIndex := startIndex ]
				ifTrue: [
					| available |
					(available := readLimit - position) > 0 
						ifFalse: [ available := 0 ]
						ifTrue: [
							| bufferedCount |
							bufferedCount := n min: available.
							aString
								replaceFrom: startIndex
								to: startIndex + bufferedCount - 1
								with: collection
								startingAt: position + 1.
							position := position + bufferedCount.
							bufferedCount = n ifTrue: [ ^aString ] ].
					newN := n - available.
					newStartIndex := startIndex + available ] ].
	count := self primRead: fileID into: aString
				startingAt: newStartIndex count: newN.
	count = newN
		ifTrue:[ ^aString ]
		ifFalse:[ ^aString copyFrom: 1 to: newStartIndex + count - 1 ]! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/6/2009 04:11'!
next: anInteger putAll: aString startingAt: startIndex
	"Store the next anInteger elements from the given collection."
	rwmode ifFalse: [^ self error: 'Cannot write a read-only file'].
	collection ifNotNil: [
		position < readLimit ifTrue: [ self flushReadBuffer ] ].	
	self primWrite: fileID from: aString startingAt: startIndex count: anInteger.
	^aString! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 10/8/2017 17:02:58'!
nextPut: char
	"Write the given byte or character (depending on mode) to this file."

	rwmode ifFalse: [^ self error: 'Cannot write a read-only file'].
	collection ifNotNil: [ 
		position < readLimit ifTrue: [ self flushReadBuffer ] ].
	buffer1 at: 1 put: char.
	self primWrite: fileID from: buffer1 startingAt: 1 count: 1.
	^ char
! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/6/2009 04:11'!
nextPutAll: aString
	"Write all the characters of the given string to this file."

	rwmode ifFalse: [^ self error: 'Cannot write a read-only file'].
	collection ifNotNil: [ 
		position < readLimit ifTrue: [ self flushReadBuffer ] ].
	self primWrite: fileID from: aString startingAt: 1 count: aString basicSize.
	^ aString
! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'tk 2/5/2000 21:58'!
nextWordsInto: aBitmap
	"Note: The file primitives automatically adjust for word based objects."

	self next: aBitmap basicSize into: aBitmap startingAt: 1.
	aBitmap restoreEndianness.
	^ aBitmap! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 10/8/2017 17:58:13'!
padToEndIfCantTruncate
	"Only makes sense for file streams with existing content.
	On file systems that don't support truncating this is needed.
	If truncating is supported, try that first"

	"On the Mac, files do not truncate.  One can delete the old file and write a new one, but sometime deletion fails (file still open? file stale?).  This is a sad compromise.  Just let the file be the same length but pad it with a harmless character."

	| pad |
	self atEnd ifTrue: [^ self].
	self truncate.
	self atEnd ifTrue: [^ self].
	pad := self isBinary 
		ifTrue: [Character space numericValue]
		ifFalse: [Character space ].
	self nextPutAll: (self collectionSpecies new: ((self size - self position) min: 20000) 
							withAll: pad)! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 11/17/2016 09:07:20'!
peek
	"Answer what would be returned if the message next were sent to the receiver. If the receiver is at the end, answer nil.  "
	| next |
	position < readLimit ifTrue: [
		^collection at: position+1 ].
	self atEnd ifTrue: [^ nil].
	next _ self basicNext.
	self position: self position - 1.
	^ next! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'tk 10/19/2001 11:29'!
peekLast
	"Return that item just put at the end of the stream"

	^ buffer1 size > 0 
		ifTrue: [buffer1 last]
		ifFalse: [nil]
! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/4/2009 06:59'!
position
	"Return the receiver's current file position.  2/12/96 sw"

	collection ifNotNil: [
		position < readLimit ifTrue: [
			^(self primGetPosition: fileID) - readLimit + position ] ].
	^self primGetPosition: fileID! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/6/2009 04:08'!
position: pos
	"Set the receiver's position as indicated.  2/12/96 sw"

	collection ifNotNil: [
		position < readLimit ifTrue: [
			| newPosition |
			newPosition := pos - (self primGetPosition: fileID) + readLimit.
			newPosition < 0 ifTrue: [
					| offsetPos |
					self primSetPosition: fileID to: (offsetPos := pos - (collection size // 4) max: 0).
					readLimit := self primRead: fileID into: collection startingAt: 1 count: collection size.
					position := pos - offsetPos.
					^self ].
			newPosition < readLimit 
				ifTrue: [
					position := newPosition.
					^self ]
				ifFalse: [
					readLimit := position := 0 ] ] ].
	^self primSetPosition: fileID to: pos! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'nice 12/7/2009 08:10'!
readInto: byteArray startingAt: startIndex count: count
	"Read into the given array as specified, and return the count
	actually transferred.  index and count are in units of bytes or
	longs depending on whether the array is Bitmap, String or ByteArray"
	
	^(self next: count into: byteArray startingAt: startIndex) size - startIndex + 1
! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'Squeak1.0 9/20/1996 10:50:05'!
setToEnd
	"Set the position of the receiver to the end of file.  1/31/96 sw"

	self position: self size! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/8/2009 00:13'!
skip: n
	"Set the character position to n characters from the current position.
	Error if not enough characters left in the file.  1/31/96 sw"

	collection ifNotNil: [
		position < readLimit ifTrue: [
			| newPosition |
			((newPosition := position + n) >= 0 and: [ newPosition < readLimit ])
				ifTrue: [ 
					position := newPosition.
					^self ] ] ].
	self position: self position + n! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'JMM 5/24/2001 22:00'!
truncate
	"Truncate to zero"

	^ self truncate: 0! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'JMM 5/24/2001 22:47'!
truncate: pos
	"Truncate to this position"

	self position: pos.
	^self primTruncate: fileID to: pos! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'jmv 10/25/2021 10:00:18'!
upTo: delimiter delimiterIsTerminator: delimiterIsTerminator
	"See comment at PositionableStream.
	Fast version to speed up nextChunk"

	| pos buffer count skipSeparator tryAgain |
	skipSeparator _ delimiterIsTerminator ifTrue: [0] ifFalse: [1].
	collection ifNotNil: [
		(position < readLimit and: [
			(pos _ collection indexOf: delimiter startingAt: position + 1) <= readLimit and: [
				pos > 0 ] ]) ifTrue: [
					^ collection copyFrom: position + 1 to: (position _ pos) - skipSeparator ] ].

	pos _ self position.
	buffer _ self next: 2000.
	(count _ buffer indexOf: delimiter) > 0 ifTrue: [
		"Found the delimiter part way into buffer"
		self position: pos + count.
		^ buffer copyFrom: 1 to: count - skipSeparator].

	self atEnd ifTrue: [
		"Never found it, and hit end of file"
		^ delimiterIsTerminator ifTrue: [self position: pos. nil] ifFalse: [buffer]].

	"Never found it, but there's more..."
	tryAgain _ self upTo: delimiter delimiterIsTerminator: delimiterIsTerminator.
	tryAgain ifNil: [
		self position: pos.
		^ nil ].
	^ buffer, tryAgain.! !

!StandardFileStream methodsFor: 'read, write, position' stamp: 'ul 12/3/2009 06:42'!
upToEnd
	"Answer a subcollection from the current access position through the last element of the receiver."

	^self collectionSpecies streamContents: [ :newStream |
		| next |
		[ (next := self next) == nil ] whileFalse: [
			newStream nextPut: next ] ]! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primAtEnd: id
	"Answer true if the file position is at the end of the file."

	<primitive: 'primitiveFileAtEnd' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primClose: id
	"Close this file."

	<primitive: 'primitiveFileClose' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primCloseNoError: id
	"Close this file. Don't raise an error if the primitive fails."

	<primitive: 'primitiveFileClose' module: 'FilePlugin'>
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/6/2001 17:58'!
primFlush: id
	"Flush pending changes to the disk"
	| p |
	<primitive: 'primitiveFileFlush' module: 'FilePlugin'>
	"In some OS's seeking to 0 and back will do a flush"
	p _ self position.
	self position: 0; position: p! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primGetPosition: id
	"Get this files current position."

	<primitive: 'primitiveFileGetPosition' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'jmv 6/9/2021 12:42:59'!
primOpen: fileNameAsUTF8 writable: writableFlag
	"Open a file of the given name, and return the file ID obtained.
	If writableFlag is true, then
		if there is none with this name, then create one
		else prepare to overwrite the existing from the beginning
	otherwise
		if the file exists, open it read-only
		else return nil"

	<primitive: 'primitiveFileOpen' module: 'FilePlugin'>
	^ nil
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primRead: id into: byteArray startingAt: startIndex count: count
	"Read up to count bytes of data from this file into the given string or byte array starting at the given index. Answer the number of bytes actually read."

	<primitive: 'primitiveFileRead' module: 'FilePlugin'>
	self closed ifTrue: [^ self error: 'File is closed'].
	self error: 'File read failed'.
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primSetPosition: id to: anInteger
	"Set this file to the given position."

	<primitive: 'primitiveFileSetPosition' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primSize: id
	"Answer the size of this file."

	<primitive: 'primitiveFileSize' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'ar 2/2/2001 15:09'!
primSizeNoError: id
	"Answer the size of this file. Answer nil if the primitive fails; this indicates that the file handle has become stale."

	<primitive: 'primitiveFileSize' module: 'FilePlugin'>
	^ nil
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'JMM 5/24/2001 21:55'!
primTruncate: id to: anInteger
	"Truncate this file to the given position."

	<primitive: 'primitiveFileTruncate' module: 'FilePlugin'>
	self primitiveFailed
! !

!StandardFileStream methodsFor: 'primitives' stamp: 'jmv 4/7/2013 17:34'!
primWrite: id from: stringOrByteArray startingAt: startIndex count: count
	"Write count bytes onto this file from the given string or byte array starting at the given index. Answer the number of bytes written."

	<primitive: 'primitiveFileWrite' module: 'FilePlugin'>
	(FileWriteError fileName: name)
		signal: (self closed
			ifTrue: [ 'File [', name, '] is closed' ]
			ifFalse: [ 'File [', name, '] write failed' ])! !

!StandardFileStream methodsFor: 'registry' stamp: 'ar 3/21/98 17:23'!
register
	^self class register: self! !

!StandardFileStream methodsFor: 'registry' stamp: 'ar 3/21/98 17:23'!
unregister
	^self class unregister: self! !

!StandardFileStream methodsFor: 'finalization' stamp: 'ar 3/21/98 18:16'!
actAsExecutor
	super actAsExecutor.
	name := nil.! !

!StandardFileStream methodsFor: 'finalization' stamp: 'ar 10/7/1998 15:44'!
finalize
	self primCloseNoError: fileID.! !

!StandardFileStream methodsFor: 'private' stamp: 'jmv 10/8/2017 17:04:44'!
collectionSpecies
	"Answer the species of collection into which the receiver can stream.
	This is ByteArray or String, depending on the mode."
	
	^buffer1 species! !

!StandardFileStream methodsFor: 'private' stamp: 'ul 12/6/2009 04:12'!
disableReadBuffering

	collection ifNotNil: [
		position < readLimit
			ifTrue: [
				| currentPosition |
				currentPosition := self position.
				collection := readLimit := position := nil.
				self position: currentPosition ]
			ifFalse: [
				collection := readLimit := position := nil ] ]
		! !

!StandardFileStream methodsFor: 'private' stamp: 'ul 12/6/2009 02:49'!
enableReadBuffering

	collection ifNil: [
		buffer1 ifNotNil: [
			collection := self collectionSpecies new: 2048 ] ].
	readLimit := position := 0! !

!StandardFileStream methodsFor: 'private' stamp: 'ul 12/6/2009 04:11'!
flushReadBuffer

	collection ifNotNil: [
		position < readLimit ifTrue: [
			| currentPosition |
			currentPosition := self position.
			position := readLimit := 0.
			self primSetPosition: fileID to: currentPosition ] ]! !

!StandardFileStream methodsFor: 'printing' stamp: 'jmv 12/15/2021 16:00:31'!
storeOn: aStream
	"A file can't be serialized"

	^ self printOn: aStream! !

!StandardFileStream class methodsFor: 'file creation' stamp: 'pb 5/25/2016 01:34'!
crc16OfFileNamed: fileName
	"
	StandardFileStream crc16OfFileNamed: 'cursor.jpeg'
	StandardFileStream crc16OfFileNamed: 'deafultPID.txt'
	"

	^[fileName asFileEntry readStreamDo: [ :stream |
		stream crc16 ]]
			on: FileDoesNotExistException do: nil! !

!StandardFileStream class methodsFor: 'registry' stamp: 'ul 8/27/2010 23:24'!
register: anObject
	
	^self registry add: anObject! !

!StandardFileStream class methodsFor: 'registry' stamp: 'ul 8/27/2010 23:24'!
registry
	
	^Registry ifNil: [ Registry := FinalizationRegistry new ]! !

!StandardFileStream class methodsFor: 'registry' stamp: 'jmv 4/25/2016 15:14'!
retryWithGC: execBlock until: testBlock forFileNamed: fullName
	"Re-implemented to only force GC if a file with the given name exists"
	| blockValue foundIt |
	blockValue := execBlock value.
	(testBlock value: blockValue) ifTrue:[^blockValue].
	"See if we have a file with the given name"
	foundIt _ self registry keys "hold on strongly for now" 
		anySatisfy:[:file| file name sameAs: fullName].
	foundIt ifFalse:[^blockValue].
	Smalltalk garbageCollectMost.
	blockValue := execBlock value.
	(testBlock value: blockValue) ifTrue:[^blockValue].
	Smalltalk garbageCollect.
	^execBlock value.! !

!StandardFileStream class methodsFor: 'registry' stamp: 'ul 8/27/2010 23:25'!
unregister: anObject
	
	^self registry remove: anObject ifAbsent: nil! !

!StandardFileStream class methodsFor: 'error handling' stamp: 'len 5/20/2020 08:30:22'!
fileDoesNotExistUserHandling: fullFileName

	| selection newName |
	selection _ (PopUpMenu labels:
'create a new file
choose another name
cancel')
			startUpWithCaption: fullFileName asFileEntry name, '
does not exist.'.
	selection = 1 ifTrue:
		[^ self new open: fullFileName forWrite: true].
	selection = 2 ifTrue:
		[ newName _ self request: 'Enter a new file name'
						initialAnswer:  fullFileName.
		^ FileIOAccessor default privateWriteableFile: newName asFileEntry ].
	self halt! !

!StandardFileStream class methodsFor: 'error handling' stamp: 'len 5/20/2020 08:30:28'!
fileExistsUserHandling: fullFileName
	| dir localName choice newName entry |
	entry _ fullFileName asFileEntry.
	dir _ entry parent.
	localName _ entry name.
	choice _ (PopUpMenu
		labels:
'overwrite that file\choose another name\cancel' withNewLines)
		startUpWithCaption: localName, '
already exists.'.

	choice = 1 ifTrue: [
		dir removeKey: localName
			ifAbsent: [self error: 'Could not delete the old version of that file'].
		^ self new open: fullFileName forWrite: true].

	choice = 2 ifTrue: [
		newName _ self request: 'Enter a new file name' initialAnswer: fullFileName.
		^ FileIOAccessor default privateNewFile: newName asFileEntry ].

	self error: 'Please close this to abort file opening'! !

!StandardFileStream class methodsFor: 'error handling' stamp: 'len 5/20/2020 08:31:13'!
readOnlyFileDoesNotExistUserHandling: fullFileName

	| dir files choices selection newName fileName |
	dir _ fullFileName asFileEntry parent.
	files _ dir fileNames.
	fileName _ fullFileName asFileEntry name.
	choices _ fileName correctAgainst: files.
	choices add: 'Choose another name'.
	choices add: 'Cancel'.
	selection _ (PopUpMenu labelArray: choices lines: (Array with: 5) )
		startUpWithCaption: fullFileName asFileEntry name, '
does not exist.'.
	selection = choices size ifTrue:["cancel" ^ nil "should we raise another exception here?"].
	selection < (choices size - 1) ifTrue: [
		newName _ (dir pathName , '/', (choices at: selection))].
	selection = (choices size - 1) ifTrue: [
		newName _ self request: 'Enter a new file name' initialAnswer: fileName.
		"If Cancel was pressed, no file should be opened - Hernan"
		newName isEmpty ifTrue: [ ^nil ]].
	newName = '' ifFalse: [^ FileIOAccessor default privateReadOnlyFile: newName asFileEntry ].
	^ self error: 'Could not open a file'! !

!StandardFileStream class methodsFor: 'cached state access' stamp: 'jmv 6/17/2015 16:43'!
releaseClassCachedState

	Registry ifNotNil: [
		"Make the best effort to empty the registry.
		Only keep files that are still open have references from some object."
		Registry isEmpty ifFalse: [
			Smalltalk garbageCollectMost.
			Registry isEmpty ifFalse: [
				Smalltalk garbageCollect.
				Registry isEmpty ifFalse: [
					Registry finalizeValues ]]].

		"No open files. Can nil the Registry."
		Registry isEmpty ifTrue: [
			Registry _ nil ]
	]! !

!StandardFileStream class methodsFor: '*compatibility-VMMaker' stamp: 'jmv 5/31/2016 12:38'!
forceNewFileNamed: aFilename
	^ aFilename asFileEntry forceWriteStream! !

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

!UndefinedObject methodsFor: '*compatibility-VMMaker' stamp: 'jmv 3/1/2010 09:59'!
environment
	"Necessary to support disjoint class hierarchies."

	^Smalltalk		"No environments in Cuis..."! !

!Behavior methodsFor: '*compatibility-VMMaker' stamp: 'jmv 11/1/2011 23:15'!
environment
	"Return the environment in which the receiver is visible"
	^Smalltalk! !

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
