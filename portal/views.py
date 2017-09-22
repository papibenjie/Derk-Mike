from django.contrib.staticfiles.storage import staticfiles_storage
from django.http import HttpResponse
from django.template import loader
import random
import requests
import json
import random
import os

def index(request):

    template = loader.get_template('portal/index.html')
    url = 'global/images/mike_faces/mike-face-'+str(random.randint(1,7))+'.png'
    context = {
        "rand_mike":url
    }
    return HttpResponse(template.render(context, request))
