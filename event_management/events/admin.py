from django.contrib import admin
from .models import Event, Attendee

@admin.register(Event)
class EventAdmin(admin.ModelAdmin):
    list_display = ('name', 'location', 'start_time', 'end_time', 'max_capacity', 'available_slots')
    list_filter = ('location', 'start_time')
    search_fields = ('name', 'location')

@admin.register(Attendee)
class AttendeeAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'event')
    list_filter = ('event',)
    search_fields = ('name', 'email')
