 assertEqual := method(actual,expected,
 	result := ""
 	if(actual == expected, result = "SUCCESS: expected " .. actual .. " to equal " .. expected , result = "FAILURE: expected: " .. expected .. " but got: " .. actual)
 	result println
 )

testAssertEqual := method(actual,expected,
	timeBefore := Date now clone
	assertEqual(actual,expected)
	timeTaken := (Date now - timeBefore) asNumber
	("This test took: " .. timeTaken .. " seconds to complete")  println
)

"Hello and welcome to your test!!!"


fibonacci := method(index,
	if(index == 0, return 1)
	if(index == 1, return 1)
	result := fibonacci(index-2) + fibonacci(index-1)
	result
)

quickFib := method(index, 
	2_num_ago := 1
	1_num_ago := 1
	result := 0
	if(index < 3, return 1)
	for(i,1,index-2,
		result = 2_num_ago + 1_num_ago
		2_num_ago = 1_num_ago
		1_num_ago = result
	)
	result
)



# testAssertEqual(fibonacci(0),1)

# testAssertEqual(fibonacci(1),1)

# testAssertEqual(fibonacci(2),2)

# testAssertEqual(fibonacci(3),3)

# testAssertEqual(fibonacci(6),13)

assertEqual(quickFib(1),1)
assertEqual(quickFib(2),1)
assertEqual(quickFib(3),2)
assertEqual(quickFib(7),13)
testAssertEqual(quickFib(1001),70330367711422815821835254877183549770181269836358732742604905087154537118196933579742249494562611733487750449241765991088186363265450223647106012053374121273867339111198139373125598767690091902245245323403501)


"This is red \[0;31m" println
