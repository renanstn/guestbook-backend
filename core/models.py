from django.db import models


class Message(models.Model):
    date = models.DateField(auto_now=True)
    author = models.CharField(max_length=255)
    text = models.TextField()
