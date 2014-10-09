 assertEqual := method(actual,expected,
 	result := ""
 	if(actual == expected, result = "SUCCESS: expected " .. actual .. " to equal " .. expected , result = "FAILURE: expected: " .. expected .. " but got: " .. actual)
 	result println
 )

"Hello and welcome to your test!!!"


fibonacci := method(index,
	if(index == 0, return 1)
	if(index == 1, return 1)
	result := fibonacci(index-2) + fibonacci(index-1)
	result
)

assertEqual(fibonacci(0),1)

assertEqual(fibonacci(1),1)

assertEqual(fibonacci(2),2)

assertEqual(fibonacci(3),3)

assertEqual(fibonacci(6),13)

assertEqual(fibonacci(8),34)