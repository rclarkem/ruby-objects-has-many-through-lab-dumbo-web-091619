=begin
Artist [independent]
0) @@all = []
1) initialize (name) and store in @@all array
2) self.all => read @@all array
3) new_song => instantiate a Song.new(name, artist, genre) 
*artist param = self* => artist and genre param are 
the varible instances to the other classes and the association

4) songs => Songs.all.select {|song| song.artist == self } 
songs that match the instance of a particular Artist 

5) genres => self.songs.map {|songs| songs.genre} 
this will give an array of the genres of that instance's songs.

Genre [indepedent]
0) @@all = []
1) initialize with (name) and store instance in @@all array
2) self.all => read @@all array
3) songs => Songs.all.select {|song| song.genre == self} 
this give an array of song instances that match a genre instance

4) artist => self.songs.map {|song| song.artist == self}


Song [joiner]
0) @@all = []
1) initialize with (name, artist, genre) and store in @@all array
2) self.all => read @@all array
=end





=begin
Doctor [independent]
0) @@all = []
1) initialize with (name) and store in @@all array
2) self.all => reads the @@all array
3) new_appointments => creates a new Appointment instance => Appointment.new(date, patient, doctor) 
*doctor param = self* this gets added to the Appointment class @@all array upon creation

4) appointment => give the appointments for that particular doctor =>
 Appointment.all.select {|appointment| appointment.doctor == self}

5) patients => self.appointments.map {|appointment| appointment.patient} =>
this will give an array of the patients from the above method that has selected out the appointments soley
for that doctor.



Patients [independent]
0) @@all = []
1)initialize with (name) and store in @@all array 
2) self.all => reads the @@all array
3) new_appointment => create a new appointment instance 
Appointment.new(date, patient, doctor) *patient param = self*

4) appointments => should only .select those appointments for that instance only 
Appointment.all.select {|appointment| appointment.patient == self}

5) doctors => based off the previous method, by only selecting for this particular instance, 
now just grab the doctors of those appointments self.appointments.map {|appointment| appointment.doctor}




Appointments [joiner]
0)@@all = []
1) initialize with (date, patient, doctor) and store instance in @@all array => single source of truth and the association for the other methods
2) self.all => reads the @@all array
=end