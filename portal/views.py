from django.http import HttpResponse
from django.template import loader

def index(request):
    template = loader.get_template('portal/index.html')
    context = {
        "list": [1,2,3]
    }
    return HttpResponse(template.render(context, request))
