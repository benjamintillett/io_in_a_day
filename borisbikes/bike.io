# CODE GOES HERE

Bike := Object clone do (
	isBroken := false
	break_bike := method(self isBroken = true)
	fix_bike := method(self isBroken = false)
)







# TEST METHOD

assertEqual := method(actual,expected,
	result := ""
	if(actual == expected, result = "[32mSUCCESS: expected " .. actual .. " to equal " .. expected .. "[0m" , result = "[31m FAILURE: expected: " .. expected .. " but got: " .. actual .. "[0m")
	result println
)

It := Object clone do (	
	bike1 := Bike clone
	"bike should equal bike" println
	assertEqual(bike1 type, "Bike")
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	"bikes are not broken by default" println
	assertEqual(bike1 isBroken, false)
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	bike1 break_bike
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, true)
	"" println
)

It := Object clone do (
	bike1 := Bike clone
	bike2 := Bike clone
	bike1 break_bike
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, true)
	assertEqual(bike2 isBroken, false)
	"" println
)


It := Object clone do (
	bike1 := Bike clone
	bike1 break_bike
	bike1 fix_bike
	"a bike can be broken and knows it is broken" println
	assertEqual(bike1 isBroken, false)
	"" println
)