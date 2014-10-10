# TEST METHOD

doFile("./bike.io")

bike1 := Bike clone

assertEqual := method(actual,expected,
	result := ""
	if(actual == expected, result = "[32mSUCCESS: expected " .. actual .. " to equal " .. expected .. "[0m" , result = "[31m FAILURE: expected: " .. expected .. " but got: " .. actual .. "[0m")
	result println
)

Stub := Object clone




DockingStation := Object clone do (
	hasNoBikes := method(
		self bikes isEmpty
	)

	bikes := method(
		self bikes := list
	)


	addBike := method(bike,
		self bikes append(bike)
	)

	removeBike := method(bike,
		self bikes remove(bike)
	)
)



It := Object clone do (	
	oldStreet := DockingStation clone
	"a docking station should be empty by default" println
	assertEqual(oldStreet hasNoBikes, true)
	"" println
)


It := Object clone do (	
	oldStreet := DockingStation clone
	"a bike can be added to a docking station" println
	bike1 := Bike clone
	oldStreet addBike(bike1)
	assertEqual(oldStreet bikes at(0), bike1)
	"" println
)

It := Object clone do (	
	oldStreet := DockingStation clone
	"when adding a bike, the docking station knows it is not empty" println
	bike1 := Bike clone
	oldStreet addBike(bike1)
	assertEqual(oldStreet hasNoBikes, false)
	"" println
)

It := Object clone do (	
	oldStreet := DockingStation clone
	"a bike can be removed from a docking station" println
	bike1 := Bike clone
	oldStreet addBike(bike1)
	oldStreet removeBike(bike1)
	assertEqual(oldStreet bikes isEmpty, true)
	"" println
)

It := Object clone do (
	oldStreet := DockingStation clone
	person = Stub clone




)








