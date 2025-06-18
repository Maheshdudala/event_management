from rest_framework import serializers
from .models import Event, Attendee
from pytz import timezone as pytz_timezone
from django.utils.timezone import localtime

class EventSerializer(serializers.ModelSerializer):
    available_slots = serializers.IntegerField(read_only=True)

    # Use DateTimeField for input, and override output manually
    start_time = serializers.DateTimeField()
    end_time = serializers.DateTimeField()

    class Meta:
        model = Event
        fields = ['id', 'name', 'location', 'start_time', 'end_time', 'max_capacity', 'available_slots']

    def to_representation(self, instance):
        """
        Customize output for timezone-aware display.
        """
        rep = super().to_representation(instance)

        # Use query param or default to IST
        request = self.context.get("request")
        tz_name = request.query_params.get("timezone") if request else "Asia/Kolkata"
        tz = pytz_timezone(tz_name) if tz_name else pytz_timezone("Asia/Kolkata")

        rep["start_time"] = localtime(instance.start_time, timezone=tz).isoformat()
        rep["end_time"] = localtime(instance.end_time, timezone=tz).isoformat()

        return rep



class AttendeeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Attendee
        fields = ['name', 'email']
