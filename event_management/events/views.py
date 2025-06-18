from rest_framework import generics, status
from rest_framework.response import Response
from django.utils.timezone import now
from .models import Event, Attendee
from .serializers import EventSerializer, AttendeeSerializer
from rest_framework.decorators import api_view

# ✅ Combined List and Create View
class EventListCreateView(generics.ListCreateAPIView):
    queryset = Event.objects.filter(start_time__gte=now()).order_by('start_time')
    serializer_class = EventSerializer
    pagination_class = None

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)

        headers = self.get_success_headers(serializer.data)
        return Response(
            {
                "message": "Event created successfully",
                "event": serializer.data
            },
            status=status.HTTP_201_CREATED,
            headers=headers
        )

@api_view(['POST'])
def register_attendee(request, event_id):
    event = Event.objects.filter(id=event_id).first()
    if not event:
        return Response({'detail': 'Event not found'}, status=404)

    if event.attendees.count() >= event.max_capacity:
        return Response({'detail': 'Event has reached maximum capacity'}, status=400)

    if Attendee.objects.filter(event=event, email=request.data.get("email")).exists():
        return Response({'detail': 'Email already registered for this event'}, status=400)

    serializer = AttendeeSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save(event=event)
        attendee_name=request.data.get("name")
        return Response({'detail': f'Attendee {attendee_name} Registrated Successfully'}, status=201)
    return Response(serializer.errors, status=400)

class AttendeeListView(generics.ListAPIView):
    serializer_class = AttendeeSerializer

    def get_queryset(self):
        event_id = self.kwargs['event_id']
        return Attendee.objects.filter(event_id=event_id).order_by('name')
