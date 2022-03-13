#for the swis area data

import requests
from geopy.geocoders import Nominatim

geolocator = Nominatim(user_agent="my_user_agent")
city ="Kolkata"
country ="India"
loc = geolocator.geocode(city+','+ country)
latitude = loc.latitude
longitude = loc.longitude
latitude_lower = latitude - 1
latitude_higher = latitude + 1
longitude_lower = longitude - 1
longitude_higher = longitude + 1


url = f"https://rithicsky:rithic2002@opensky-network.org/api/states/all?lamin={latitude_lower}&lomin={longitude_lower}&lamax={latitude_higher}&lomax={longitude_higher}"



response = requests.get(url)

print(response.text)