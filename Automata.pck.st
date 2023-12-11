'From Cuis 6.0 [latest update: #6053] on 11 December 2023 at 9:34:48 pm'!
'Description A library of finite state machines'!
!provides: 'Automata' 1 36!
!requires: 'Kleene' 1 0 nil!
SystemOrganization addCategory: #Automata!


!classDefinition: #InvalidTransitionError category: #Automata!
Exception subclass: #InvalidTransitionError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'InvalidTransitionError class' category: #Automata!
InvalidTransitionError class
	instanceVariableNames: ''!

!classDefinition: #TapeMorph category: #Automata!
LayoutMorph subclass: #TapeMorph
	instanceVariableNames: 'interval model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TapeMorph class' category: #Automata!
TapeMorph class
	instanceVariableNames: ''!

!classDefinition: #CellMorph category: #Automata!
UpdatingLabelMorph subclass: #CellMorph
	instanceVariableNames: 'sequence index alphabet model setter getter alphabetGetter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'CellMorph class' category: #Automata!
CellMorph class
	instanceVariableNames: ''!

!classDefinition: #UpdatingAlignedLabelMorph category: #Automata!
UpdatingLabelMorph subclass: #UpdatingAlignedLabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'UpdatingAlignedLabelMorph class' category: #Automata!
UpdatingAlignedLabelMorph class
	instanceVariableNames: ''!

!classDefinition: #PointerMorph category: #Automata!
UpdatingAlignedLabelMorph subclass: #PointerMorph
	instanceVariableNames: 'index setSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'PointerMorph class' category: #Automata!
PointerMorph class
	instanceVariableNames: ''!

!classDefinition: #Automaton category: #Automata!
Object subclass: #Automaton
	instanceVariableNames: 'states transitions start alphabet accepting'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Automaton class' category: #Automata!
Automaton class
	instanceVariableNames: ''!

!classDefinition: #DeterministicAutomaton category: #Automata!
Automaton subclass: #DeterministicAutomaton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'DeterministicAutomaton class' category: #Automata!
DeterministicAutomaton class
	instanceVariableNames: ''!

!classDefinition: #DFA category: #Automata!
DeterministicAutomaton subclass: #DFA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'DFA class' category: #Automata!
DFA class
	instanceVariableNames: ''!

!classDefinition: #TuringMachine category: #Automata!
DeterministicAutomaton subclass: #TuringMachine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TuringMachine class' category: #Automata!
TuringMachine class
	instanceVariableNames: ''!

!classDefinition: #NFA category: #Automata!
Automaton subclass: #NFA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'NFA class' category: #Automata!
NFA class
	instanceVariableNames: ''!

!classDefinition: #AutomatonVM category: #Automata!
Object subclass: #AutomatonVM
	instanceVariableNames: 'automaton state head tape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'AutomatonVM class' category: #Automata!
AutomatonVM class
	instanceVariableNames: ''!

!classDefinition: #DFAVM category: #Automata!
AutomatonVM subclass: #DFAVM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'DFAVM class' category: #Automata!
DFAVM class
	instanceVariableNames: ''!

!classDefinition: #TMVM category: #Automata!
AutomatonVM subclass: #TMVM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TMVM class' category: #Automata!
TMVM class
	instanceVariableNames: ''!

!classDefinition: #CompositeState category: #Automata!
Object subclass: #CompositeState
	instanceVariableNames: 'items'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'CompositeState class' category: #Automata!
CompositeState class
	instanceVariableNames: ''!

!classDefinition: #Epsilon category: #Automata!
Object subclass: #Epsilon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Epsilon class' category: #Automata!
Epsilon class
	instanceVariableNames: ''!

!classDefinition: #Tape category: #Automata!
Object subclass: #Tape
	instanceVariableNames: 'blank activePositive activeNegative'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Tape class' category: #Automata!
Tape class
	instanceVariableNames: ''!

!classDefinition: #Transition category: #Automata!
Object subclass: #Transition
	instanceVariableNames: 'from to symbol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Transition class' category: #Automata!
Transition class
	instanceVariableNames: ''!

!classDefinition: #TuringMachineTransition category: #Automata!
Transition subclass: #TuringMachineTransition
	instanceVariableNames: 'writeSymbol headDirection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TuringMachineTransition class' category: #Automata!
TuringMachineTransition class
	instanceVariableNames: ''!

!classDefinition: #TransitionFunction category: #Automata!
Object subclass: #TransitionFunction
	instanceVariableNames: 'tuples'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TransitionFunction class' category: #Automata!
TransitionFunction class
	instanceVariableNames: ''!

!classDefinition: #TransitionRelation category: #Automata!
Object subclass: #TransitionRelation
	instanceVariableNames: 'tuples index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TransitionRelation class' category: #Automata!
TransitionRelation class
	instanceVariableNames: ''!


!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:29:40'!
adoptWidgetsColor: aColor
	"don't adopt any colors"
	! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:24:46'!
buildHeadMorph

	| cells aLayoutMorph |
	
	cells _ interval collect:[:each | PointerMorph new fontSize:24; color: Color black; index: each; target: model; getSelector: #head; setSelector:#head:; yourself ].

	aLayoutMorph _ LayoutMorph newRow.

	aLayoutMorph separation:4@8 ; axisEdgeWeight: #center.
	
	cells do:[:each | aLayoutMorph addMorph: each proportionalWidth: 1 / cells size ].

	^aLayoutMorph 
! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:34:18'!
buildMorph

	self addMorph: self buildTapeMorph proportionalHeight: 5/8;
		addMorph: self buildHeadMorph proportionalHeight: 3/8.
		
! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:36:16'!
buildTapeMorph

	| aLayoutMorph cells |
	
	cells _ interval collect:[:each | CellMorph new fontSize:36; color: Color white; model: model ; index: each; getter: #tapeAt: ; setter: #tapeAt:put: ; alphabetGetter: #alphabet; yourself ].

	aLayoutMorph _ LayoutMorph newRow.

	aLayoutMorph color: Color black.
	
	aLayoutMorph separation:16@8 ; axisEdgeWeight: #center.
	
	cells do:[:each | aLayoutMorph addMorph: each proportionalWidth: 1 / cells size ].

	^ aLayoutMorph! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:14:45'!
interval: anInterval
	interval _ anInterval! !

!TapeMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:35:39'!
model: anObject
	model _ anObject! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:35:54'!
alphabet

	alphabetGetter ifNil:[^{}].
	
	^model perform: alphabetGetter! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:35:28'!
alphabetGetter: aSymbol
	alphabetGetter _ aSymbol! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 15:54:18'!
fontSize: anInteger

	self font: (FontFamily defaultFamilyPointSize: anInteger).
! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/12/2021 14:47:21'!
getMenu

	| aMenu | 

	aMenu _ MenuMorph new defaultTarget: self.
	aMenu
		addTitle: 'Alphabet'.
	
	aMenu addItemsFromDictionaries: (self alphabet collect:[:each |  
		{	#label 			-> 	each.
			#object 			-> 	self.
			#selector 			->	#write: .
			#arguments     -> 	 {each}				} asDictionary ]).

	aMenu addItemsFromDictionaries: {
		{	#label 			-> 	'Input...'.
			#object 			-> 	self.
			#selector 			->	#writeAll 	} asDictionary }.
		
	^aMenu ! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:30'!
getter: aMessage
	getter _ aMessage! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 19:52:56'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/1/2021 21:49:23'!
index: anInteger
	index _ anInteger! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:22:20'!
initialize

	super initialize.
	
	self contents: ''.
	
	self getSelector: #itemAtIndex ; target: self! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:08:58'!
itemAtIndex

	model ifNil:[^''].
	
	index ifNil:[^''].
	
	^model perform: getter with: index! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:09'!
model: anObject
	model _ anObject! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 19:50:01'!
mouseButton2Activity
	"Invoke the menu"
	self getMenu ifNotNil: [ :menu |
		menu popUpInWorld: self world ]! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 10:06:22'!
setter: aMessage
	setter _ aMessage! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:22:55'!
write: aString

	model perform: setter with: index with: aString
! !

!CellMorph methodsFor: 'as yet unclassified' stamp: 'DF 3/12/2021 14:48:22'!
writeAll

	StringRequestMorph
		request: 'Enter a string of symbols: '
		initialAnswer: ''
		do: [:aString| aString withIndexDo:[:each :i | 
					model perform: setter with: index + i with: each asString ] ].
! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:23:04'!
drawOn: aCanvas
	aCanvas
		drawString: (contents ifNil: [ '' ])
		at: self midpointAlignment 
		font: self fontToUse
		color: color! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 20:22:57'!
midpointAlignment

	^ (self morphTopLeft + self morphTopRight) / 2 - (self measureContents x / 2 @ 0)! !

!UpdatingAlignedLabelMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2021 19:35:13'!
morphTopRight

	^self morphTopLeft + (self morphWidth @ 0)! !

!PointerMorph methodsFor: 'event handling testing' stamp: 'DF 1/3/2021 11:04:08'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!PointerMorph methodsFor: 'stepping' stamp: 'DF 1/2/2021 21:44:52'!
stepAt: millisecondSinceLast

	(target perform: getSelector) = index 
		ifTrue:[ 	self contents: '' ] ifFalse:[self contents: '' ].
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 15:54:09'!
fontSize: anInteger

	self font: (FontFamily defaultFamilyPointSize: anInteger).
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/2/2021 21:41:22'!
index: anInteger
	
	index _ anInteger.! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:22:38'!
initialize

	super initialize.
	
	self contents: ''.
! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:44:11'!
mouseButton1Activity

	Transcript show:'*';cr.
	
	target perform: setSelector with: index! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:49:09'!
mouseButton1Up: anEvent localPosition: aPoint

	target perform: setSelector with: index! !

!PointerMorph methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 11:03:54'!
setSelector: aSelector
	setSelector _ aSelector! !

!Automaton methodsFor: 'accessing' stamp: 'DF 11/28/2023 15:32:59'!
accepting
	^accepting
	! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:42:51'!
addState: aState
	states add: aState! !

!Automaton methodsFor: 'accessing' stamp: 'DF 4/2/2021 20:42:37'!
alphabet
	^alphabet ! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:42:46'!
alphabet: aSet
	alphabet := aSet! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/15/2021 17:21:59'!
markAsAccepting: aState
	accepting add: aState! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:42:59'!
start
	^start! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:43:07'!
start: aState
	start := aState! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:44:07'!
stateLike: aState
	^states like: aState! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:43:12'!
states
	^states! !

!Automaton methodsFor: 'accessing' stamp: 'DF 1/30/2022 15:24:36'!
transitions
	^transitions ! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/15/2021 17:22:10'!
unmarkAsAccepting: aState
	accepting remove: aState! !

!Automaton methodsFor: 'testing' stamp: 'DF 3/13/2021 12:44:12'!
ifNotState: aState do: aBlock

	(states includes: aState)
		ifFalse:[aBlock value]! !

!Automaton methodsFor: 'testing' stamp: 'DF 4/2/2021 21:09:57'!
isAccepting: aState
	^ accepting includes: aState! !

!Automaton methodsFor: 'testing' stamp: 'DF 3/13/2021 12:53:05'!
isState: aState
	^states includes: aState! !

!Automaton methodsFor: 'initialization' stamp: 'DF 3/15/2021 17:19:58'!
initialize

	states := Set new.
	
	accepting := Set new.
	
	transitions := self newTransitionRelation.! !

!Automaton methodsFor: 'initialization' stamp: 'DF 3/13/2021 12:46:29'!
newTransitionRelation
	^self subclassResponsibility ! !

!Automaton methodsFor: 'morphic' stamp: 'DF 12/16/2021 21:37:20'!
asStateDiagram

	^self asStateDiagram: #asString! !

!Automaton methodsFor: 'morphic' stamp: 'DF 11/29/2023 19:35:41'!
asStateDiagram: labelPrinter

	| map aStateDiagram |
	
	map := Dictionary new.
	
	aStateDiagram := StateDiagram new.
	
	self states do:[:each | | aDiagramState | . aDiagramState := DiagramState new radius:0.5 ; label: (each perform: labelPrinter) ; yourself . map at: each put: aDiagramState ].
	
	map do:[:each | aStateDiagram addState: each ].
	
	aStateDiagram setInitialState: (map at: start).
	
	accepting do:[:each | (map at:each) accepting: true].
	
	self transitions do:[:each | aStateDiagram connect:(map at:each from) to: (map at:each to) label: (each symbol perform: labelPrinter) ].
	
	^aStateDiagram

	! !

!Automaton methodsFor: 'converting' stamp: 'DF 12/11/2023 15:02:18'!
asAutomaton: automatonClass

	"Answer an equivalent automatonClass with automatonClass stateClass states instead of whatever states self currently uses. 
	
	automatonClass is a factory for states and transitions. For example, using an SDLNFA class creates states 
	that keep adjacency lists, and transitions (instances of SDLTransition) that update these lists when created. "
	
	| id result stateClass | 	
	
	result := automatonClass new.

	stateClass := result stateBuilder.
	
	id := Dictionary new.
	
	states do:[:each | id at:each put: stateClass new].

	states do:[:each | result addState: (id at: each) ].
	
	result alphabet: alphabet.
	
	result start: (id at:start).
	
	transitions do:[:eachTransition | 
		result setTransitionFrom: (id at: eachTransition from) onSymbol: eachTransition symbol to: (id at: eachTransition to) ].
	
	accepting do:[:each | result markAsAccepting: (id at:each) ].
	
	^result! !

!Automaton methodsFor: 'converting' stamp: 'DF 12/11/2023 13:28:36'!
toCanonicForm
	
	| id anAutomaton |
	
	anAutomaton := self class new.
		
	anAutomaton alphabet: alphabet.
	
	id := Dictionary new.
	
	states asArray withIndexDo:[:eachState :i | 
		id at: eachState put: i ].
	
	(1 to: states size) do:[:i | anAutomaton addState: i].
		
	transitions do:[:each |
		anAutomaton setTransitionFrom: (id at:each from) onSymbol: (each symbol) to: (id at:each to).
	].

	anAutomaton start: (id at:start).
	
	accepting do:[:each | anAutomaton markAsAccepting: (id at: each) ].

	^anAutomaton
	! !

!DeterministicAutomaton methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:51:35'!
newTransitionRelation
	^TransitionFunction new! !

!DeterministicAutomaton methodsFor: 'accessing' stamp: 'DF 11/30/2023 16:55:24'!
atState: aState atSymbol: aString
	^transitions transitionAt: aState at: aString ifAbsent:[InvalidTransitionError new signal].! !

!DFA methodsFor: 'accessing' stamp: 'DF 1/17/2022 16:09:39'!
addTransition: aTransition
	
	transitions put: aTransition
	! !

!DFA methodsFor: 'accessing' stamp: 'DF 12/11/2023 15:01:31'!
setTransitionFrom: fromState onSymbol: aSymbol to: toState

	| aTransition |
	
	aTransition := self transitionBuilder new.
	
	aTransition from: fromState ; symbol: aSymbol; to: toState.
	
	transitions put: aTransition
	! !

!DFA methodsFor: 'accessing' stamp: 'DF 12/11/2023 13:49:06'!
stateBuilder
	^CompositeState ! !

!DFA methodsFor: 'accessing' stamp: 'DF 12/11/2023 13:49:16'!
transitionBuilder
	^Transition! !

!DFA class methodsFor: 'as yet unclassified' stamp: 'DF 12/14/2021 21:27:18'!
example

	"self example"
	
	| aDFA a b c d |
	
	aDFA _ self new.
		
	a _ 'a'. b _ 'b'. c _ 'c'. d _ 'd'.
	
	aDFA alphabet: { #ab . #bc . #cd . #ac . #ca } asSet.
	
	aDFA addState: a ; addState: b; addState: c; addState: d.
	
	aDFA start: a.
	
	aDFA setTransitionFrom:  a onSymbol: #ab to: b.
	aDFA setTransitionFrom:  b 	onSymbol: #bc to: c .
	aDFA setTransitionFrom:  c 	onSymbol: #cd to: d .
	aDFA setTransitionFrom:  a onSymbol: #ad to: d 	.
	aDFA setTransitionFrom:  a 	onSymbol: #ac to: c .
	aDFA setTransitionFrom:  c 	onSymbol: #ca to: a .
	
	^aDFA
	
! !

!TuringMachine methodsFor: 'initialization' stamp: 'DF 4/2/2021 21:15:09'!
initialize

	super initialize.
	
	accepting _ { #yes . #no } asSet.! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 4/2/2021 20:32:53'!
program
	^transitions! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 4/2/2021 20:33:10'!
program: aTransitionFunction

	transitions := aTransitionFunction
	! !

!TuringMachine methodsFor: 'accessing' stamp: 'DF 4/2/2021 20:34:34'!
stopState: anInteger

	accepting add: anInteger! !

!TuringMachine methodsFor: 'visualization' stamp: 'DF 1/30/2022 15:24:54'!
asStateDiagram

	| aStateDiagram diagramStates automatonStates diagramTransitions transitionSets |
	
	aStateDiagram _ StateDiagram new.

	automatonStates _ Set new.
	
	transitions do:[:each | automatonStates add: each from. automatonStates add: each to ].
	
	diagramStates _ Dictionary new.
	
	automatonStates do:[:each | diagramStates at: each put: (DiagramState new radius:15 ; label: each asString) ].
	
	(diagramStates at: start) initial: true.
	
	diagramStates do:[:each | aStateDiagram addState: each ].
	
	accepting do:[:each | diagramStates at: each ifPresent:[:s | s accepting: true] ifAbsent:[] ].
	
	"create turing machine transition objects from the program tuples"
	
	diagramTransitions _ transitions collect:[:each | each copy].
	
	"replace the from/to states by their corresponding diagram states"
	
	diagramTransitions do:[:each | each from: (diagramStates at: each from) ; to: (diagramStates at: 	each to) ].
		
	"collect all the transitions between the same pair of states into a single set."
	
	transitionSets _ Dictionary new.
	
	diagramTransitions do:[:each | 
		transitionSets at: each key
		ifPresent: [ :aSet | aSet add: each ]
		ifAbsent:[ transitionSets at: each key put:{ each } asSet ] ].
	
	transitionSets do:[:each | each addConnectionsTo: aStateDiagram alphabet: alphabet ].
	
	^aStateDiagram
	! !

!TuringMachine class methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:26:29'!
new: anXraySymbol

	| aTuringMachine aTransitionFunction |
	
	aTuringMachine := self new.
	
	aTransitionFunction _ TransitionFunction new.
	
	(#transitions @ anXraySymbol) do:[:each | aTransitionFunction put: (TuringMachineTransition from:each) ].
	
	aTuringMachine alphabet: #alphabet @ anXraySymbol ; start: #q0 @ anXraySymbol ; stopState: #qe @ anXraySymbol ; program: aTransitionFunction.
	
	^aTuringMachine! !

!NFA methodsFor: 'converting' stamp: 'DF 11/30/2023 20:11:56'!
toDFA: aDFAClass 
	
	| aDFA current todo |
		
	todo := OrderedCollection new.
	 
	aDFA := aDFAClass new.
	
	aDFA alphabet: alphabet.
	
	current := aDFA stateBuilder new: (transitions epsilonClosureOf: (Set with:start)).
	
	aDFA addState: current. 
	aDFA start: current.
	
	todo addLast: current.

	[todo isEmpty] whileFalse:[
		current := todo removeFirst.
		alphabet do:[:eachSymbol |  | next existingState |
			
			next := current next: eachSymbol in: transitions.
			
			 "we will not add the empty state to aDFA. this is an efficiency optimisation as 
			most of the transitions end up to the empty state and all the work of adding them 
			and then filtering them out later dominates the runtime."
			
			next isEmpty
			ifFalse:[
				existingState := aDFA stateLike: next.
			
				existingState 
				ifNil:[
					aDFA addState: next.
					todo addLast: next.
					existingState := next.
				].
				aDFA addTransition: (aDFA transitionBuilder new symbol: eachSymbol ; from: current ; to: existingState; yourself).
			]
		]
	].

	aDFA states do:[:each | (each items anySatisfy:[:nfaState | self isAccepting: nfaState ]) ifTrue:[ aDFA markAsAccepting: each] ].

	^aDFA
		! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2023 13:52:17'!
addTransitionFrom: fromState onSymbol: aSymbol to: toState

	| aTransition |
	
	aTransition := self transitionBuilder new.
	
	aTransition from: fromState.
	
	aTransition symbol: aSymbol.
	
	aTransition to: toState.
	
	transitions add: aTransition.
	
	! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2021 12:51:50'!
newTransitionRelation
	^TransitionRelation new! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2023 14:48:19'!
setTransitionFrom: fromState onSymbol: aSymbol to: toState

	self addTransitionFrom: fromState onSymbol: aSymbol  to: toState
	! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2023 13:52:04'!
stateBuilder
	^Object! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 12/11/2023 13:52:17'!
transitionBuilder
	^Transition! !

!NFA methodsFor: 'algebra' stamp: 'DF 11/30/2023 21:21:21'!
loop

	| result |
	
	result := NFA new.
	
	result alphabet: alphabet.
	
	states do:[:each | result addState: each ].
	
	transitions tuples do:[:each | result transitions add: each].
		
	result start: start.
	
	accepting do:[:each | 
		
		result addTransitionFrom: each onSymbol: Epsilon to: start].
	
	accepting do:[:each | result markAsAccepting: each].
	
	result markAsAccepting: result start.
	
	^result
	 ! !

!NFA methodsFor: 'algebra' stamp: 'DF 12/11/2023 13:33:39'!
seq: anNFA

	"create an NFA that accepts the strict sequential composition of self followed by anNFA"

	| result |
	
	result := NFA new.
	
	result alphabet: (alphabet union: anNFA alphabet).
	
	states do:[:each | result addState: each ].
	
	anNFA states do:[:each | result addState: each ].
	
	transitions tuples do:[:each | result transitions add: each].
	
	anNFA transitions tuples do:[:each | result transitions add: each].
	
	result start: start.
		
	accepting do:[:each |
		
		result addTransitionFrom: each onSymbol: Epsilon to: anNFA start].
		
	anNFA accepting do:[:each | result markAsAccepting: each].
	
	^result! !

!NFA methodsFor: 'algebra' stamp: 'DF 12/11/2023 13:52:04'!
union: anNFA

	| result st |
	
	result := NFA new.
	
	result alphabet: (alphabet union: anNFA alphabet).
	
	states do:[:each | result addState: each ].
	
	anNFA states do:[:each | result addState: each ].
	
	transitions tuples do:[:each | result transitions add: each].
	
	anNFA transitions tuples do:[:each | result transitions add: each].
	
	st := self stateBuilder new.
	
	result addState: st.
	
	result start: st.
	
	result addTransitionFrom: st onSymbol: Epsilon to: start.
	
	result addTransitionFrom: st onSymbol: Epsilon to: anNFA start.
	
	accepting do:[:each | result markAsAccepting: each].
	
	anNFA accepting do:[:each | result markAsAccepting: each].
	
	^result! !

!AutomatonVM methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:17:41'!
automaton: anAutomaton
	automaton _ anAutomaton! !

!AutomatonVM methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:22:18'!
head
	^head! !

!AutomatonVM methodsFor: 'accessing' stamp: 'DF 4/2/2021 21:22:27'!
head: anInteger
	head _ anInteger! !

!AutomatonVM methodsFor: 'accessing' stamp: 'DF 4/2/2021 15:35:59'!
state
	^state! !

!AutomatonVM methodsFor: 'accessing' stamp: 'DF 4/2/2021 15:29:36'!
tape: aTape
	tape _ aTape! !

!AutomatonVM methodsFor: 'testing' stamp: 'DF 4/2/2021 15:29:04'!
isRunning
	^ (tape at: head) ~= tape blank! !

!AutomatonVM methodsFor: 'computing' stamp: 'DF 4/2/2021 15:01:05'!
reset

	state _ automaton start.
	
	head _ 1.! !

!AutomatonVM methodsFor: 'computing' stamp: 'DF 4/2/2021 15:30:12'!
step
	self subclassResponsibility ! !

!DFAVM methodsFor: 'computing' stamp: 'DF 4/2/2021 21:00:06'!
step

	| aTransition |
	
	aTransition _ automaton atState: state atSymbol: (tape at: head).
	
	state _ aTransition to.
	
	head _ head + 1.
	! !

!TMVM methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:10:26'!
isRunning
	^ (automaton isAccepting: state) not ! !

!TMVM methodsFor: 'as yet unclassified' stamp: 'DF 4/2/2021 21:11:33'!
step

	| instruction |
	
	(self isRunning) ifFalse:[^self].

	instruction := automaton atState: state atSymbol: (tape at: head).
	
	tape at: head put: instruction writeSymbol.
	
	(instruction headDirection = -1) ifTrue:[head _ head - 1].
	
	(instruction headDirection = 1) ifTrue:[head _ head + 1].
	
	state := instruction to.
	! !

!CompositeState methodsFor: 'accessing' stamp: 'DF 3/16/2021 13:07:52'!
items
	^items! !

!CompositeState methodsFor: 'accessing' stamp: 'DF 3/16/2021 13:07:46'!
items: aSet
	items := aSet! !

!CompositeState methodsFor: 'epsilon closure' stamp: 'DF 3/16/2021 13:08:30'!
next: aSymbol in: aTransitionRelation

	^self class new: (aTransitionRelation epsilonClosureOf: (aTransitionRelation fromStateSet: items at: aSymbol))! !

!CompositeState methodsFor: 'testing' stamp: 'DF 3/16/2021 13:13:14'!
isEmpty
	^items isEmpty! !

!CompositeState methodsFor: 'comparing' stamp: 'DF 3/16/2021 13:16:37'!
= aState

	self == aState ifTrue: [^ true].
	self class == aState class ifFalse: [^ false].

	^items = aState items! !

!CompositeState methodsFor: 'comparing' stamp: 'DF 3/16/2021 13:18:32'!
hash
	^items hash! !

!CompositeState class methodsFor: 'instance creation' stamp: 'DF 3/16/2021 13:11:41'!
new: items

	| aState  |
	
	aState := self new.
	
	aState items: items.
	
	^aState! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:14:07'!
active

	^ activeNegative reverse, activePositive! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:40:25'!
at: anInteger

	anInteger <= 0 
		ifTrue:[ | index |
		
		index := 1 - anInteger.
		
		index > activeNegative size ifTrue:[^blank].
		
		^activeNegative at: index ]
	
		ifFalse:[
			
			anInteger > activePositive size ifTrue:[^blank].
			
			^activePositive at: anInteger].
		
		
		! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 21:45:19'!
at: anInteger put: aSymbol

	anInteger <= 0 
		ifTrue:[ | index |
		
		index := 1 - anInteger.
		
		index - activeNegative size timesRepeat:[activeNegative add: blank].
		
		activeNegative at: index put: aSymbol ]
	
		ifFalse:[
			
			anInteger - activePositive size timesRepeat:[activePositive add: blank].
			
			activePositive at: anInteger put: aSymbol ].
! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 13:24:29'!
blank
	^blank! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 1/3/2021 16:48:33'!
format
	activeNegative atAllPut: blank.
	activePositive atAllPut: blank.! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 13:27:58'!
initialize

	activePositive := OrderedCollection new.

	activeNegative := OrderedCollection new.
	
	blank := '_'.! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/26/2020 10:11:22'!
inverseTransform: anInteger
	
	"transform a position from aboslute to view relative "
	
	^ anInteger + activeNegative size
	! !

!Tape methodsFor: 'as yet unclassified' stamp: 'DF 11/25/2020 22:20:03'!
transform: anInteger
	
	"transform a position from aboslute to view relative "
	
	^ anInteger - activeNegative size
	! !

!Transition methodsFor: 'printing' stamp: 'DF 9/24/2020 14:34:12'!
printDotOn: aStream

	aStream nextPut:$".
	
	from printDotOn: aStream.

	aStream nextPut:$".
	
	aStream nextPutAll:' -> '.
	
	aStream nextPut:$".
	
	to printDotOn: aStream.
	
	aStream nextPut:$".
	
	aStream nextPutAll: ' [ label ="'.
		
	symbol printDotOn: aStream.
	
	aStream nextPutAll: '" ];'.! !

!Transition methodsFor: 'printing' stamp: 'DF 9/30/2020 22:26:52'!
printOn: aStream

	super printOn: aStream.
	
	aStream nextPut:$(.
	
	from printOn: aStream.
	
	aStream nextPut:$,.
	
	symbol printOn: aStream.
	
	aStream nextPut:$,.
	
	to printOn: aStream.
	
	aStream nextPut:$).
! !

!Transition methodsFor: 'accessing' stamp: 'DF 9/23/2020 18:54:36'!
from
	^from! !

!Transition methodsFor: 'accessing' stamp: 'DF 1/18/2022 22:17:31'!
from: aState
	from := aState! !

!Transition methodsFor: 'accessing' stamp: 'DF 9/23/2020 18:54:43'!
symbol
	^symbol! !

!Transition methodsFor: 'accessing' stamp: 'DF 9/23/2020 18:54:25'!
symbol: aSymbol
	symbol := aSymbol! !

!Transition methodsFor: 'accessing' stamp: 'DF 9/23/2020 18:54:39'!
to
	^to! !

!Transition methodsFor: 'accessing' stamp: 'DF 9/23/2020 18:54:16'!
to: aState
	to := aState! !

!Transition methodsFor: 'converting' stamp: 'DF 4/2/2021 19:08:33'!
asTuple
	^{ from . symbol . to }
	! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2020 23:31:30'!
= aTransition

	self == aTransition ifTrue: [^ true].
	self class == aTransition class ifFalse: [^ false].

	^from = aTransition from and:[symbol = aTransition symbol] and:[to = aTransition to]! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2020 23:32:15'!
hash
	^ from hash bitXor: (symbol hash bitXor: to hash)! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2022 13:48:50'!
replaceFromWith: aState

	| aTransition |
		
	aTransition := self copy.
	
	aTransition from: aState.
	
	^aTransition! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 1/20/2022 13:48:58'!
replaceToWith: aState

	| aTransition |
	
	aTransition := self copy.
	
	aTransition to: aState.
	
	^aTransition! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 12/23/2020 12:57:57'!
headDirection
	^headDirection! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 12/23/2020 12:40:31'!
headDirection: anInteger
	headDirection _ anInteger! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 3/16/2021 17:24:19'!
readSymbol
	^symbol! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 3/16/2021 17:24:19'!
readSymbol: aString
	symbol _ aString! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 12/23/2020 12:54:31'!
writeSymbol
	^writeSymbol! !

!TuringMachineTransition methodsFor: 'accessing' stamp: 'DF 12/23/2020 12:40:22'!
writeSymbol: aString
	writeSymbol _ aString! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:55:23'!
addConnectionTo: aStateDiagram withLabel: aString
	aStateDiagram connect: from to: to label: aString! !

!TuringMachineTransition methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:59:28'!
key
	^ { from . to }
	! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 3/16/2021 17:24:19'!
isMoveLeftTransition
	^symbol = writeSymbol and:[headDirection = -1]! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 3/16/2021 17:24:19'!
isMoveRightTransition
	^symbol = writeSymbol and:[headDirection = 1]! !

!TuringMachineTransition methodsFor: 'testing' stamp: 'DF 3/16/2021 17:24:19'!
isReadTransition
	^symbol = writeSymbol and:[headDirection = 0]! !

!TuringMachineTransition methodsFor: 'converting' stamp: 'DF 4/2/2021 19:19:33'!
asTuple

	^{ from . symbol . writeSymbol . ( (headDirection = 1) ifTrue:[ '^'] ifFalse:[ (headDirection = 0) ifTrue:[  '' ] ifFalse:[ ':='] ] )  . to }
	! !

!TuringMachineTransition class methodsFor: 'as yet unclassified' stamp: 'DF 1/16/2021 17:28:03'!
alphabet: aCollectionOfSymbols currentState: aState if: aSymbol then: thenState else: elseState

	| thenTransitions elseTransitions |
	
	thenTransitions _ { { aState . aSymbol } -> { aSymbol . 0 . thenState } }.
	
	elseTransitions _ aCollectionOfSymbols reject:[:each | each = aSymbol ] 
		thenCollect:[:each | { aState . each } -> { each . 0 .  elseState } ].
		
	^ thenTransitions, elseTransitions
	! !

!TuringMachineTransition class methodsFor: 'as yet unclassified' stamp: 'DF 12/23/2020 12:44:15'!
from: anAssociation

	| aTransition |
	
	aTransition _ self new.
	
	aTransition from: anAssociation key first.
	aTransition readSymbol: anAssociation key second.
	aTransition writeSymbol: anAssociation value first.
	aTransition headDirection: anAssociation value second.
	aTransition to: anAssociation value third.
	
	^aTransition
	! !

!TransitionFunction methodsFor: 'printing' stamp: 'DF 12/14/2021 21:03:26'!
printDotOn: aStream

	tuples 	do: [:eachDictionary | eachDictionary do:[:eachTransition | eachTransition printDotOn: aStream. aStream nextPut: Character lf ] ].! !

!TransitionFunction methodsFor: 'printing' stamp: 'DF 9/25/2020 14:26:03'!
printOn: aStream

	super printOn: aStream.	
	tuples printOn: aStream.
! !

!TransitionFunction methodsFor: 'accessing' stamp: 'DF 10/27/2020 14:32:24'!
put: aTransition

	(tuples at: aTransition from ifAbsentPut:[Dictionary new]) at: aTransition symbol put: aTransition.! !

!TransitionFunction methodsFor: 'accessing' stamp: 'DF 4/2/2021 19:32:39'!
transitionAt: aState at: aSymbol ifAbsent: aBlock

	^tuples at: aState 
		ifPresent:[:aDictionary | 
			aDictionary at: aSymbol 
				ifPresent:[:aTransition | aTransition] 
				ifAbsent:aBlock ]
		ifAbsent:aBlock
	! !

!TransitionFunction methodsFor: 'initialization' stamp: 'DF 9/25/2020 14:19:36'!
initialize
	tuples := Dictionary new! !

!TransitionFunction methodsFor: 'enumerating' stamp: 'DF 1/19/2022 19:17:22'!
do: aBlock

	tuples do:[:eachDictionary | eachDictionary do: aBlock ].
! !

!TransitionFunction methodsFor: 'converting' stamp: 'DF 12/11/2023 14:26:16'!
asTransitionRelation

	| aTransitionRelation |

	aTransitionRelation := TransitionRelation new.
	
	self do:[:each |
		aTransitionRelation addTransitionFrom: each from onSymbol: each symbol to: 	each to]
	
	^aTransitionRelation ! !

!TransitionRelation methodsFor: 'printing' stamp: 'DF 9/24/2020 12:01:17'!
printDotOn: aStream

	tuples do:[:each | each printDotOn: aStream. aStream nextPut: Character lf ].! !

!TransitionRelation methodsFor: 'printing' stamp: 'DF 9/23/2020 19:08:37'!
printOn: aStream

	super printOn: aStream.
	
	tuples printOn: aStream.! !

!TransitionRelation methodsFor: 'accessing' stamp: 'DF 10/28/2020 12:23:33'!
add: aTransition

	| aSet |
	
	tuples add: aTransition.
	
	" the index is used to speed up popular queries esp. fromState:at: and fromStateSet:at:"
	
	aSet := index at: { aTransition from . aTransition symbol } ifAbsentPut:[Set new].
	
	aSet add: aTransition.
	
	index associations do:[:assoc | assoc value do:[:t | (assoc key first = t from) ifFalse:[self halt] ] ].
! !

!TransitionRelation methodsFor: 'accessing' stamp: 'DF 12/14/2021 22:11:11'!
tuples
	^tuples! !

!TransitionRelation methodsFor: 'as yet unclassified' stamp: 'DF 11/29/2023 12:36:46'!
do: aBlock

	tuples do:[:each | aBlock value: each ].
! !

!TransitionRelation methodsFor: 'as yet unclassified' stamp: 'DF 11/28/2023 20:59:13'!
epsilonClosureOf: aSet

	| closure extension |
		
	closure := Set new.
	
	closure addAll: aSet.
	
	extension := Set new.
	
	closure do:[:each | 
		extension addAll: ((self fromState: each at: Epsilon) reject:[:other | closure includes: other ]) ].
	
	[extension isEmpty]
		whileFalse:[
			closure addAll: extension.
			
			extension := Set new.
	
			closure do:[:each | 
				extension addAll: ((self fromState: each at: Epsilon) reject:[:other | closure includes: other ]) ].
			].
	
	^closure! !

!TransitionRelation methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2020 11:33:37'!
fromState: aState at: aSymbol

	^index at: { aState . aSymbol } ifPresent:[:aSet | aSet collect:[:each | each to] ] ifAbsent:[Set new]
	
! !

!TransitionRelation methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2020 12:51:30'!
fromStateSet: aSet at: aSymbol

	| xs |
	
	xs := (aSet collect:[:each | index at: { each . aSymbol} ifAbsent:[Set new] ]).

	^xs flatten collect:[:each | each to].
	
	
	
! !

!TransitionRelation methodsFor: 'initialization' stamp: 'DF 10/28/2020 10:45:39'!
initialize

	tuples := Set new.
	
	index := Dictionary new.! !

!TransitionRelation methodsFor: 'converting' stamp: 'DF 12/11/2023 14:26:39'!
asTransitionRelation
	^self! !
