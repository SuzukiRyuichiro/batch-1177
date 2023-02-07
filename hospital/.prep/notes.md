- When building apps, we just don't deal with one object
- Hospital - Patient, Doctor, Room, Medicine, Injury
- Model then the hash argument
- Room and patient, patients are in rooms, and there are different rooms
- But then, wouldn't it be nice if we can know the room of the patient by asking them, instead checking all the rooms and see which one that person is in

```rb
def add_patient(patient)
    raise RoomFull, "Room is full!" if full?
    patient.room = self
    @patients << patient
end
```

CSV

- In this lecture, we're going to see how to represent this relationship between rooms and patients in CSV, and think about how we can load that into our repositories
- First, write the rooms, then we can think about the patients
- Then patients. Add `room_id`
