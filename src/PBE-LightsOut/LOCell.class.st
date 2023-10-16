Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff

]

{ #category : #initialization }
LOCell >> mouseAction: aBlock [
	mouseAction := aBlock
]

{ #category : #'game logic' }
LOCell >> mouseUp: anEvent [
	self toggleState.
	mouseAction value
]
