'From Cuis 5.0 [latest update: #4526] on 16 March 2021 at 1:36:38 pm'!
'Description A library of finite state machines'!
!provides: 'Automata' 1 7!
SystemOrganization addCategory: 'Automata'!


!classDefinition: #Automaton category: 'Automata'!
Object subclass: #Automaton
	instanceVariableNames: 'states transitions start alphabet accepting'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Automaton class' category: 'Automata'!
Automaton class
	instanceVariableNames: ''!

!classDefinition: #DFA category: 'Automata'!
Automaton subclass: #DFA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'DFA class' category: 'Automata'!
DFA class
	instanceVariableNames: ''!

!classDefinition: #NFA category: 'Automata'!
Automaton subclass: #NFA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'NFA class' category: 'Automata'!
NFA class
	instanceVariableNames: ''!

!classDefinition: #CompositeState category: 'Automata'!
Object subclass: #CompositeState
	instanceVariableNames: 'items'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'CompositeState class' category: 'Automata'!
CompositeState class
	instanceVariableNames: ''!

!classDefinition: #Transition category: 'Automata'!
Object subclass: #Transition
	instanceVariableNames: 'from to symbol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'Transition class' category: 'Automata'!
Transition class
	instanceVariableNames: ''!

!classDefinition: #TransitionFunction category: 'Automata'!
Object subclass: #TransitionFunction
	instanceVariableNames: 'tuples transitionClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TransitionFunction class' category: 'Automata'!
TransitionFunction class
	instanceVariableNames: ''!

!classDefinition: #TransitionRelation category: 'Automata'!
Object subclass: #TransitionRelation
	instanceVariableNames: 'tuples index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Automata'!
!classDefinition: 'TransitionRelation class' category: 'Automata'!
TransitionRelation class
	instanceVariableNames: ''!


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

!TransitionFunction methodsFor: 'printing' stamp: 'DF 9/25/2020 14:26:03'!
printOn: aStream

	super printOn: aStream.	
	tuples printOn: aStream.
! !

!TransitionRelation methodsFor: 'printing' stamp: 'DF 9/23/2020 19:08:37'!
printOn: aStream

	super printOn: aStream.
	
	tuples printOn: aStream.! !

!Automaton methodsFor: 'accessing' stamp: 'DF 3/13/2021 12:42:51'!
addState: aState
	states add: aState! !

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

!Automaton methodsFor: 'accessing' stamp: 'DF 3/15/2021 17:22:10'!
unmarkAsAccepting: aState
	accepting remove: aState! !

!Automaton methodsFor: 'testing' stamp: 'DF 3/13/2021 12:44:12'!
ifNotState: aState do: aBlock

	(states includes: aState)
		ifFalse:[aBlock value]! !

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

!DFA methodsFor: 'initialization' stamp: 'DF 3/13/2021 12:46:43'!
newTransitionRelation
	^TransitionFunction new! !

!DFA methodsFor: 'accessing' stamp: 'DF 9/27/2020 11:37:54'!
setTransitionFrom: fromState onSymbol: aSymbol to: toState

	| aTransition |
	
	aTransition := Transition new.
	
	aTransition from: fromState ; symbol: aSymbol; to: toState.
	
	transitions put: aTransition
	! !

!DFA methodsFor: 'accessing' stamp: 'DF 10/1/2020 10:29:39'!
transitionClass: aClass
	transitions transitionClass: aClass! !

!DFA methodsFor: 'converting' stamp: 'DF 10/28/2020 09:59:31'!
toCanonicForm
	
	| id aDFA |
	
	aDFA := DFA new.
		
	aDFA transitionClass: CanonicTransition. 
	
	aDFA alphabet: alphabet.
	
	id := Dictionary new.
	
	states asArray withIndexDo:[:eachState :i | 
		id at: eachState put: i ].
	
	(1 to: states size) do:[:i | aDFA addState: i].
		
	(transitions select:[:each | true ]) do:[:each |
		aDFA setTransitionFrom: (id at:each from) onSymbol: (each symbol) to: (id at:each to).
	].

	^aDFA
	! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2020 12:48:58'!
addTransitionFrom: fromState onSymbol: aSymbol to: toState

	| aTransition |
	
	aTransition := Transition new.
	
	aTransition from: fromState.
	
	aTransition symbol: aSymbol.
	
	aTransition to: toState.
	
	transitions add: aTransition.
	
	! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 3/13/2021 12:51:50'!
newTransitionRelation
	^TransitionRelation new! !

!NFA methodsFor: 'as yet unclassified' stamp: 'DF 3/16/2021 13:13:59'!
toDFA: aDFAClass withStateBuilder: aStateClass
	
	| aDFA current todo |
		
	todo := OrderedCollection new.
	 
	aDFA := aDFAClass new.
	
	aDFA transitionClass: Transition.
		
	aDFA alphabet: alphabet.
	
	current := aStateClass new: (transitions epsilonClosureOf: (Set with:start)).
	
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
				aDFA setTransitionFrom: current onSymbol: eachSymbol to: existingState.


			]
		]
	].

	^aDFA
		! !

!CompositeState methodsFor: 'accessing' stamp: 'DF 3/16/2021 13:18:32'!
hash
	^items hash! !

!CompositeState methodsFor: 'accessing' stamp: 'DF 3/16/2021 13:07:52'!
items
	^items! !

!CompositeState methodsFor: 'accessing' stamp: 'DF 3/16/2021 13:07:46'!
items: aSet
	items := aSet! !

!CompositeState methodsFor: 'epsilon closure' stamp: 'DF 3/16/2021 13:08:30'!
next: aSymbol in: aTransitionRelation

	^self class new: (aTransitionRelation epsilonClosureOf: (aTransitionRelation fromStateSet: items at: aSymbol))! !

!CompositeState methodsFor: 'testing' stamp: 'DF 3/16/2021 13:16:37'!
= aState

	self == aState ifTrue: [^ true].
	self class == aState class ifFalse: [^ false].

	^items = aState items! !

!CompositeState methodsFor: 'testing' stamp: 'DF 3/16/2021 13:13:14'!
isEmpty
	^items isEmpty! !

!CompositeState class methodsFor: 'instance creation' stamp: 'DF 3/16/2021 13:11:41'!
new: items

	| aState  |
	
	aState := self new.
	
	aState items: items.
	
	^aState! !

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

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2020 23:31:30'!
= aTransition

	self == aTransition ifTrue: [^ true].
	self class == aTransition class ifFalse: [^ false].

	^from = aTransition from and:[symbol = aTransition symbol] and:[to = aTransition to]! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:36'!
from
	^from! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:11'!
from: aState
	from := aState! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/30/2020 23:32:15'!
hash
	^ from hash bitXor: (symbol hash bitXor: to hash)! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2020 12:48:10'!
replaceFromWith: aState

	| aTransition |
		
	aTransition := self copy.
	
	aTransition from: aState.
	
	^aTransition! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/27/2020 12:54:12'!
replaceToWith: aState

	| aTransition |
	
	aTransition := self copy.
	
	aTransition to: aState.
	
	^aTransition! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:43'!
symbol
	^symbol! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:25'!
symbol: aSymbol
	symbol := aSymbol! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:39'!
to
	^to! !

!Transition methodsFor: 'as yet unclassified' stamp: 'DF 9/23/2020 18:54:16'!
to: aState
	to := aState! !

!TransitionFunction methodsFor: 'printing' stamp: 'DF 3/13/2021 12:07:22'!
printDotOn: aStream

	tuples 	do: [:each | each printDotOn: aStream. aStream nextPut: Character lf ].! !

!TransitionFunction methodsFor: 'accessing' stamp: 'DF 10/27/2020 14:32:24'!
put: aTransition

	(tuples at: aTransition from ifAbsentPut:[Dictionary new]) at: aTransition symbol put: aTransition.! !

!TransitionFunction methodsFor: 'accessing' stamp: 'DF 11/16/2020 16:21:13'!
removeState: aState

	tuples removeKey: aState ifAbsent:[].
	
	tuples values do:[:each | each keysAndValuesRemove:[:key :value | value to = aState ] ].
	
	! !

!TransitionFunction methodsFor: 'accessing' stamp: 'DF 10/1/2020 10:22:17'!
transitionClass: aClass
	transitionClass := aClass! !

!TransitionFunction methodsFor: 'initialization' stamp: 'DF 9/25/2020 14:19:36'!
initialize
	tuples := Dictionary new! !

!TransitionFunction methodsFor: 'enumerating' stamp: 'DF 10/1/2020 10:23:47'!
entering: aState

	^ self select:[:each | each to = aState ]
! !

!TransitionFunction methodsFor: 'enumerating' stamp: 'DF 10/28/2020 10:28:11'!
exiting: aState

	^tuples at: aState ifPresent:[:aDictionary | aDictionary values] ifAbsent:[Set new].! !

!TransitionFunction methodsFor: 'enumerating' stamp: 'DF 10/27/2020 14:43:50'!
select: aBlock

	^ (tuples values collect:[:each | each values ]) flatten select: aBlock
	
! !

!TransitionFunction methodsFor: 'testing' stamp: 'DF 9/29/2020 13:21:27'!
isCyclicState: aState

	^ ((self exiting: aState) select:[:each | each to = aState]) notEmpty! !

!TransitionRelation methodsFor: 'printing' stamp: 'DF 9/24/2020 12:01:17'!
printDotOn: aStream

	tuples do:[:each | each printDotOn: aStream. aStream nextPut: Character lf ].! !

!TransitionRelation methodsFor: 'accessing' stamp: 'DF 10/28/2020 12:23:33'!
add: aTransition

	| aSet |
	
	tuples add: aTransition.
	
	" the index is used to speed up popular queries esp. fromState:at: and fromStateSet:at:"
	
	aSet := index at: { aTransition from . aTransition symbol } ifAbsentPut:[Set new].
	
	aSet add: aTransition.
	
	index associations do:[:assoc | assoc value do:[:t | (assoc key first = t from) ifFalse:[self halt] ] ].
! !

!TransitionRelation methodsFor: 'as yet unclassified' stamp: 'DF 10/28/2020 12:49:25'!
epsilonClosureOf: aSet

	| closure extension |
		
	closure := Set new.
	
	closure addAll: aSet.
	
	extension := Set new.
	
	closure do:[:each | 
		extension addAll: ((self fromState: each at: Epsilon new) reject:[:other | closure includes: other ]) ].
	
	[extension isEmpty]
		whileFalse:[
			closure addAll: extension.
			
			extension := Set new.
	
			closure do:[:each | 
				extension addAll: ((self fromState: each at: Epsilon new) reject:[:other | closure includes: other ]) ].
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
