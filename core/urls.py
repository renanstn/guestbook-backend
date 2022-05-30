from rest_framework import routers

from core import views

router = routers.DefaultRouter()

router.register(r"messages", views.MessageView)
