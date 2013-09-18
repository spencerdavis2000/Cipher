#This is a Cipher program using math concepts and Ruby

		A cipher comes from a simple math concept called a one-to-one relationship

		If we have a set A = {a, b, c} and set B = {0, 1, 2} we have
		A 		B
		a 		0
		b 		1
		c 		2

		If we map a to 0 and b to 1 and c to 2, we have a "one-to-one" relationship. 
		Also, as long as the relationship is one-to-one and everything in each set is 
		"mapped" to something and nothing is left out, then it is also called "onto"

		If we have a function that is "one-to-one" and "onto" it is also called "bijective"
		In math, if we have a one-to-one relationship, we can have what is called an "inverse"
		or the "mirror image" of the original.

		This is very useful in developing the concept of "cipher" and "decipher" or making 
		encrypted and decrypted messages.
		
		If we have an alphabet:
			{a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z}

		We can map it to a set of numbers:
			{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25}

		We then have our "one-to-one" relationship. It is also "onto" and "bijective"

		From math:  ƒ(x) = (ax + b) mod n 
					•	 ƒ is bijective iff gcd(a, n) = 1 
							where gcd is greatest common divisor (from Euclid's Theorem: a = bq + r)
					•	 If so, then ƒ–1(x) = (kx + c) mod n where ƒ(c) = 0 and 1 = ak + nm.
							where ƒ–1(x) is the inverse of ƒ(x) 

		From this we come up with a simple additive cipher

					•	 f(x) = (x + 5) mod 26
							this "encrypts" our message

					•	 ƒ–1(x) = (x – 5) mod 26
							this "decrypts" our message

		So, if we enter "hello" we get "mjqqt" as an output.  This is because 'h' is in the 7 position
					f(x) = (x + 5) mod 26
					f(7) = (7 + 5) mod 26
					f(7) = 12
					12 gets mapped to 'm'

		Decrypting our message goes like this:
					ƒ–1(x) = (x – 5) mod 26
					ƒ–1(12) = (12 – 5) mod 2
					ƒ–1(12) = 7 mod 26
					ƒ–1(12) = 7
					7 gets mapped back to 'h'

		Here is an example to my program using the same function:
		
			[22] pry(main)> scramble("Hey I am hungry and want to get some vegan food to eat")
			=> "mjd n fr mzslwd fsi bfsy yt ljy xtrj ajlfs ktti yt jfy"
			[23] pry(main)> descramble("mjd n fr mzslwd fsi bfsy yt ljy xtrj ajlfs ktti yt jfy")
			=> "hey i am hungry and want to get some vegan food to eat"


