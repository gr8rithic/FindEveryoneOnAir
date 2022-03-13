from geopy.geocoders import Nominatim
geolocator = Nominatim(user_agent="my_user_agent")
city ="Kolkata"
country ="India"
loc = geolocator.geocode(city+','+ country)
print(type(loc.latitude))
print(type(loc.longitude))