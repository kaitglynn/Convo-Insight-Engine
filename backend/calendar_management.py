```python
import datetime
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request

# If modifying these SCOPES, delete the file token.pickle.
SCOPES = ['https://www.googleapis.com/auth/calendar']

def authenticate_google_account():
    creds = None
    if os.path.exists('token.pickle'):
        with open('token.pickle', 'rb') as token:
            creds = pickle.load(token)
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        with open('token.pickle', 'wb') as token:
            pickle.dump(creds, token)
    return creds

def create_event(summary, location, description, start_time, end_time):
    creds = authenticate_google_account()
    service = build('calendar', 'v3', credentials=creds)

    event = {
        'summary': summary,
        'location': location,
        'description': description,
        'start': {
            'dateTime': start_time,
            'timeZone': 'America/Los_Angeles',
        },
        'end': {
            'dateTime': end_time,
            'timeZone': 'America/Los_Angeles',
        },
        'reminders': {
            'useDefault': False,
            'overrides': [
                {'method': 'email', 'minutes': 24 * 60},
                {'method': 'popup', 'minutes': 10},
            ],
        },
    }

    event = service.events().insert(calendarId='primary', body=event).execute()
    return event['id']

def delete_event(event_id):
    creds = authenticate_google_account()
    service = build('calendar', 'v3', credentials=creds)
    service.events().delete(calendarId='primary', eventId=event_id).execute()

def update_event(event_id, summary, location, description, start_time, end_time):
    creds = authenticate_google_account()
    service = build('calendar', 'v3', credentials=creds)

    event = service.events().get(calendarId='primary', eventId=event_id).execute()

    event['summary'] = summary
    event['location'] = location
    event['description'] = description
    event['start']['dateTime'] = start_time
    event['end']['dateTime'] = end_time

    updated_event = service.events().update(calendarId='primary', eventId=event['id'], body=event).execute()
    return updated_event['id']

def get_events():
    creds = authenticate_google_account()
    service = build('calendar', 'v3', credentials=creds)

    now = datetime.datetime.utcnow().isoformat() + 'Z'  # 'Z' indicates UTC time
    events_result = service.events().list(calendarId='primary', timeMin=now,
                                          maxResults=10, singleEvents=True,
                                          orderBy='startTime').execute()
    events = events_result.get('items', [])
    return events
```