from django.http import HttpResponse
from django.template import loader
import requests
import json
import random


def index(request):
    template = loader.get_template('portal/index.html')

    uri = "https://pokeapi.co/api/v2/pokemon/"+str(random.randint(1,700))
    response = requests.get(uri)
    json_data = json.loads(response.text)
    a = {k: v for k, v in json_data["sprites"].items() if v}
    pos, uri = random.choice(list(a.items()))
    context = {
        "rand_poke_uri": uri
    }
    return HttpResponse(template.render(context, request))
