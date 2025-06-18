from django.urls import path
from .views import (
    EventListCreateView, register_attendee, AttendeeListView
)

urlpatterns = [
    path('events/', EventListCreateView.as_view(), name='event-list-create'),
    path('events/<int:event_id>/register/', register_attendee, name='event-register'),
    path('events/<int:event_id>/attendees/', AttendeeListView.as_view(), name='event-attendees'),
]
