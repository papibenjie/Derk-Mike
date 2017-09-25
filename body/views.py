from django.http import HttpResponse
from django.template import loader
import os
import random as rdm

def index(request):

    mypath = 'body/static/body/images'
    captions = ["wow", "quel homme", "que dire ?", "magnifique !", "miam", "so swag", "balancoire", "Mike! Mike!"]

    onlyfiles = ["body/images/" + f for f in os.listdir(mypath) if os.path.isfile(os.path.join(mypath, f))]
    rdm.shuffle(onlyfiles)

    captions = [rdm.choice(captions) for i in onlyfiles]

    template = loader.get_template('body/index.html')
    context = {
        "urls": dict(zip(onlyfiles, captions)),
        "hide_nav": False,
    }
    return HttpResponse(template.render(context, request))
