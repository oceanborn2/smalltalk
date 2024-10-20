x:= 1/2.0.

x:= $A.

x:= $ .

#logo className .

x:=#(4 1 2).

x*x*x.

1/x.

3.99 asInteger .

3.99 round: 2.

x:= 3.99 rounded.

1/3.99.

Transcript clear .

x := Set new.
x add: 5.
x add: 7; add: 10.
x add: 'foo'.

x asString printString.


x printString.

" iterating "
'abc' do: [ :each | Transcript show: each ].

'abc' 
do: [ :each | Transcript show: [each uppercase] ]
separatedBy: [ Transcript cr ].

22 factorial.


100 factorial / 99 factorial = 100
ifTrue: [ Transcript show: 'condition evaluated to true' ]
ifFalse: [ Transcript show:  'beep' ].

"does not work" 
'a' uppercase .

"works"
$a uppercase .



"inheritance"
Object class superclass class class
