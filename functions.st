"various functions"

"fibonacci implementations"
fibo := [:n |
        (n<=1)
            ifTrue: [n]
            ifFalse:
                [
                    (fibo value: (n-1)) +
                    (fibo value: (n-2))
                ]
    ].
"fibo className ."
fibo value:15.


fact := [:n |
        (n<=1)
            ifTrue: [1]
            ifFalse:
                [
                    (fact value: (n-1)) * n
                ]
    ].

fact value:10.

"fact avec une gestion d'erreur si n<0"
fact := [:n |
	(n<0) 
	ifTrue: [ "error" ]
	ifFalse:[
        (n<=1)
            ifTrue: [1]
            ifFalse:
                [ (fact value: (n-1)) * n   ] ]].

fact value:-10; value:0; value:1; value:10.





| fact |
fact := [ :n ]
	(n==0) ifTrue: [1]
	ifFalse: [ (fact value: n - 1) * n ].


	
	
| fibonacci |
fibonacci := [:n | 
    n <= 1 
        ifTrue: [ n ] 
        ifFalse: [ (fibonacci value: n - 1) + (fibonacci value: n - 2) ].
].

fibonacci value: 10.  "Calculera le 10ème terme de la suite de Fibonacci"


"version erronnée générée par chatgpt dans un premier essai"
"Object subclass: Fibonacci [    
    Fibonacci >> fibonacci: n [
        ^ n <= 1 
            ifTrue: [ n ] 
            ifFalse: [ (self fibonacci: n - 1) + (self fibonacci: n - 2) ].
    ]
]"

"version corrigée mais ne fonctionne pas non plus"
"Object subclass: #Fibonacci
    instanceVariableNames: ''.
Fibonacci >> fibonacci: n [
    ^ n <= 1 
        ifTrue: [ n ] 
        ifFalse: [ (self fibonacci: n - 1) + (self fibonacci: n - 2) ].
]"


"https://stackoverflow.com/questions/21945338/smalltalk-fibonacci"
a := b := 1.
(n - 1) timesRepeat: [a := b + (b := a)]. "ne semble pas fonctionner mais compile ok"

"fonctionne correctement"
fibo := [:n |
        (n<=1)
            ifTrue: [n]
            ifFalse:
                [
                    (fib value: (n-1)) +
                    (fib value: (n-2))
                ]
    ].
fibo className .
fibo value:14.
