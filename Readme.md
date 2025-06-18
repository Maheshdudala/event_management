# Event Management System API

A lightweight, scalable backend system for managing events and attendees using **Django REST Framework** with **PostgreSQL**.

---

## 🔍 Overview

This API allows users to:

* Create and list events
* Register attendees for specific events
* View attendees for a given event
* Handle timezone-aware scheduling
* Track available slots
* Paginate event and attendee listings
* Serve OpenAPI docs via Swagger

Built with clean architecture, proper exception handling, and extensibility in mind.

---

## ⚙️ Setup Instructions

### 1. Clone the repository:

```bash
git clone https://github.com/Maheshdudala/event_management.git
cd event_management
```

### 2. Create and activate virtual environment:

```bash
python -m venv env
source env/bin/activate   # or `env\Scripts\activate` on Windows
```

### 3. Install dependencies:

```bash
pip install -r requirements.txt
```

### 4. Configure PostgreSQL database

Create a `.env` file in the root directory:

#### ✅ .env file for PostgreSQL

```
DB_NAME=event_db
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
```

Make sure PostgreSQL is running and the database `event_db` is created.

### 5. Apply migrations and create superuser

```bash
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
```

### 6. Run the server

```bash
python manage.py runserver
```

### 7. Access:

* Admin panel: [http://localhost:8000/admin/](http://localhost:8000/admin/)
* Swagger UI: [http://localhost:8000/swagger/](http://localhost:8000/swagger/)

---

## 📊 Sample API Requests (Postman)

### Create Event (POST `/api/events/`)

```json
{
  "name": "Tech Talk",
  "location": "Mumbai",
  "start_time": "2025-08-01T09:00:00+05:30",
  "end_time": "2025-08-01T11:00:00+05:30",
  "max_capacity": 100
}
```

### List Events (GET `/events/`)

Optionally support timezone conversion:

```
/api/events/?timezone=Europe/London
```

### Register Attendee (POST `/events/{event_id}/register/`)

```json
{
  "name": "Alice",
  "email": "alice@example.com"
}
```

### List Attendees (GET `/events/{event_id}/attendees/`)

Paginated and sorted alphabetically.

---

## 🤔 Assumptions

* Events are created in IST by default
* Timezone conversion is handled via query param `timezone`
* Each attendee's email must be unique per event
* Slot count is dynamically calculated using attendee count

---

## 🚀 Future Enhancements

* Add authentication with JWT (for event organizers)
* Support for recurring events
* Notification system (e.g., email reminders)
* Filter events by location or category
* Export attendee lists to CSV/PDF

---

## 🚩 Tech Stack

* Python 3.10+
* Django 5.1+
* Django REST Framework
* PostgreSQL
* drf-yasg (Swagger/OpenAPI docs)

---
