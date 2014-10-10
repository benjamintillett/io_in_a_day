assertEqual := method(actual,expected,
	result := ""
	if(actual == expected, result = "[32mSUCCESS: expected " .. actual .. " to equal " .. expected .. "[0m" , result = "[31m FAILURE: expected: " .. expected .. " but got: " .. actual .. "[0m")
	result println
)

TestSpecial := Object clone do (
	forward := method(arg,  
			if(self methodList contains(call message name), result := "[32m Succesfuly recived "  .. (call message name) .. "[0m", result :=  "[31mFAIL[0m")
			result println
		)
)

Double := TestSpecial clone do (
	expectToRecive := method(name, 
		self methodList append(name) 
	)
	methodList := list()
)


# bike := Double clone 



It := Object clone do (	
	bike := Double clone
	bike expectToRecive("testMethod")
	bike expectToRecive("hello")
	bike testMethod
	bike hello
	bike bresd
)








# bike expectToRecive("addBike")
# bike expectToRecive("poo")





# bike addBike
# bike poo
# bike ahh

	


