#for the swis area data

import requests

url = "https://rithicsky:rithic2002@opensky-network.org/api/states/all?lamin=45.8389&lomin=5.9962&lamax=47.8229&lomax=10.5226"



response = requests.get(url)

print(response.text)