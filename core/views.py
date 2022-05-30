from rest_framework import viewsets

from core import models, serializers


class MessageView(viewsets.ModelViewSet):
    queryset = models.Message.objects.all()
    serializer_class = serializers.MessageSerializer
