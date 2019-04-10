/* Justin Keeling Assignment 5 */

data class City (val name: String = "", val latitude: Double = 0.0, val longitude: Double = 0.0 ){} // class to hold data about citites, STEP 1

fun main(){
    System.out.println("**********Step Two**********")
    
    val cityLocations : MutableList<City> = listcityLocations() // list of cityLocations by calling function
    cityLocations.forEach{ System.out.println(it)} // prints each city object in list
    
	System.out.println("**********Step Three**********\nThe distance between Seattle and Tacoma is")
    
    val index = cityLocations.indexOfFirst {it.name == "Tacoma"} // find object with name tacoma
    if (index >= 0){ // -1 if query is not in list, else correct index...
        val tacoma = cityLocations[index] // get object tacoma with correct index
        val distance : Double = distanceFromSeattle(tacoma) // gets distance from function call 
        System.out.println("$distance km") // prints distance
    }
    
    System.out.println("**********Step Four**********\nA new List with the distances of all cities in list to Seattle:")
   
    val distances : MutableList<Double> = mutableListOf() // create an empty list to hold the distances of each city from seattle
    val greater1000 : MutableList<String> = mutableListOf() // list to do step 5
	for (i in cityLocations){ // iterate through city locations
        var d = distanceFromSeattle(i) // holds the double value to be added into list
    	distances.add(d) // add the double into list
        
        // for step 5! // grab any values that are greater than a 1000 km. 
        if (d >= 1000){
            greater1000.add(i.name)
        }
   	}
    System.out.println(distances.joinToString(prefix = "[", postfix = "]")) // adds square brackets to beginning and end of string.
    

    System.out.println("**********Step Five**********\nList of cities over 1000KM from Seattle")
    
    greater1000.forEach{System.out.println(it)} // print list of cities that meet requirement.
    
    System.out.println("**********Step Six**********")
    
    val westofMissLong : Double = -89.97803 // anything less than is west...
    val filtered = cityLocations.filter{it.longitude < westofMissLong} // filter by "if city is west of mississippi"
    val mapped = filtered.map{it.name} // obtain from filtered the name of city
    
    System.out.println(mapped.joinToString(prefix = "[", postfix = "]")) // print with square brackets
    
    System.out.print("**********Step Seven**********\nMax Distance: ")
    
    val maxBySeattle = cityLocations.maxBy{distanceFromSeattle(it)} // get the city furthest from seattle
    System.out.println(maxBySeattle) // print furthest city from seattle
	
    System.out.println("**********Step Eight**********")
    
    val mappedCities = cityLocations.map{it.name ; it} // creates map from list

	val bozemanIndex = mappedCities.indexOfFirst {it.name == "Bozeman"} // find object with name tacoma

    if (bozemanIndex == -1){ // checks if bozeman is not in list
        mappedCities.forEach{
            var name = it.name
            System.out.println("Name $name : City $it") // print all
        } 
    }
    else{ // if it is in map
        var mappedFilter = mappedCities.filter{it.name != "Bozeman"} // filter out bozeman in order to print last
        mappedFilter.forEach{
            var name = it.name
            System.out.println("Name $name : City $it") // print evreything but bozeman
        }
        var lat = mappedCities[bozemanIndex].latitude
        System.out.println("The latitude of Bozeman is $lat") // only print bozeman's latitude
        
        }
    }

fun listcityLocations(): MutableList<City>{
    // create objects of City
    val cityLocations: MutableList<City> = mutableListOf()
    val atlanta  = City("Atlanta" , 33.7490, -84.3880)
    val bozeman = City("Bozeman", 45.6770, -111.0429)
    val newYork = City("New York" , 40.7128, -74.0060)
    val sanFran = City("San Francisco" , 37.7749, -122.4194)
    val tacoma = City("Tacoma" , 47.2529, -122.4443)
    // add to list to return
    cityLocations.add(atlanta)
    cityLocations.add(bozeman)
    cityLocations.add(newYork)
    cityLocations.add(sanFran)
    cityLocations.add(tacoma)
    return cityLocations
}

fun distanceFromSeattle(city: City) : Double { // calculate distance from Seattle
    // seattles given longitude and latitude
    val seattleLong : Double = -122.3321
    val seattleLat : Double = 47.6062   
    val dist : Double = haversine(city.latitude, city.longitude, seattleLat, seattleLong)  
    return dist // returns the distance
}


// Hunter Lloyd given code
fun haversine(lat1: Double, lon1: Double, lat2 : Double, lon2 :Double):Double{
    val R = 6372.8
    val l1 = Math.toRadians(lat1)
    val l2 = Math.toRadians(lat2)
    val dl = Math.toRadians(lat2 - lat1)
    val dr = Math.toRadians(lon2 - lon1)
    return 2 * R * Math.asin(Math.sqrt(Math.pow(Math.sin(dl / 2), 2.0) + Math.pow(Math.sin(dr / 2), 2.0) * Math.cos(l1) * Math.cos(l2)))
}