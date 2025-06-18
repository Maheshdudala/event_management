from django.db import models
from django.utils import timezone

class Event(models.Model):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=255)
    start_time = models.DateTimeField()
    end_time = models.DateTimeField()
    max_capacity = models.PositiveIntegerField()

    @property
    def available_slots(self):
        return max(0, self.max_capacity - self.attendees.count())

    def __str__(self):
        return self.name

class Attendee(models.Model):
    event = models.ForeignKey(Event, on_delete=models.CASCADE, related_name='attendees')
    name = models.CharField(max_length=255)
    email = models.EmailField()

    class Meta:
        unique_together = ['event', 'email']  # Prevent duplicates
