import uuid

from django.db import models


class Message(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4)
    date = models.DateField(auto_now=True)
    author = models.CharField(max_length=255)
    text = models.TextField()

    def __str__(self) -> str:
        return self.author
