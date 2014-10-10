assertEqual := method(actual,expected,
	result := ""
	if(actual == expected, result = "[32mSUCCESS: expected " .. actual .. " to equal " .. expected .. "[0m" , result = "[31m FAILURE: expected: " .. expected .. " but got: " .. actual .. "[0m")
	result println
)

TestSpecial := Object clone do (
	forward := method(arg,  
			if(self methodList contains(call message name),  
				self isCalled = "[32m Succesfully received "  .. (call message name) .. "[0m",  
				self isCalled =  "[31mWRONG MESSAGE[0m")
		)
)


Double := TestSpecial clone do (
	isCalled := "[31mBIKE DID NOT RECIEVE A MESSAGE[0m"

	expectToRecive := method(name,callback,
		self methodList append(name) 
		callback(self) 
		self isCalled println
	)
	methodList := list()
)

ArgsChecker := Object clone do (
	forward := method(
		call message arguments 
	)
)





It := Object clone do (	
	bike := Double clone
	bike expectToRecive("testMethod",method(bike,
		bike testMethod
		)
	)
)






# It := Object clone do (	
# 	bike := Double clone
# 	bike expectToRecive("testMethod")
# 	bike expectToRecive("hello", method(bike,
# 		# bike testMethod

# 		# bike hello
# 		# bike bresd
# 	))
# )
# It := Object clone do (	
# 	bike := ArgsChecker clone
# 	bike testMethod("hello", "lp") println
# )






# bike expectToRecive("addBike")
# bike expectToRecive("poo")





# bike addBike
# bike poo
# bike ahh

	


