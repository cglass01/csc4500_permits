# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'superadmin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create!(email: 'emailcrusher@email.com', password: 'passpass', created_at: '2015-02-3 10:54:35', updated_at: '2015-02-3 10:54:35')
user1 = User.create!(email: 'newsmaker@email.com', password: 'slampass', created_at: '2015-04-3 12:54:35', updated_at: '2015-12-3 10:54:35')
user2 = User.create!(email: 'studenthome@email.com', password: 'learner', created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35', position: 'Student')
user3 = User.create!(email: 'teacherwork@email.com', password: 'study6', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'Faculty')
user4 = User.create!(email: 'superadmin@email.com', password: 'admin6', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'admin')
user5 = User.create!(email: 'editmon@email.com', password: 'editor', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'editor')
stud1 = Student.create(student_id: '1234567', last_name: 'jacobs', first_name: 'boxer', home_address: '257 Discovery road' ,home_city: 'Rockford' ,home_state: 'Illinois',
    home_zip: '60106',school_year_address: '257 Discovery road',school_year_city: 'Rockford', school_year_zip: '60106', room_number: 'NULL', home_phone: '3518759989',
    cell_phone: '9856243571', new_student: '0', returning_student: '1', athletic_team: 'NULL', user_id: user2.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')
fac1 = Faculty.create(faculty_id: '0983547', last_name: 'Kane', first_name: 'Jeffery', home_address: '156 Lake St' , city: 'Aurora' , state: 'Illinois',
     zip: '60505', home_phone: '3313568794', cell_phone: '6305896245', office_phone: '6302569874', new_faculty: '0', department: 'Math', office: 'Dun 215',
     user_id: user3.id, created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')
ec1 = EmergencyContact.create(last_name: 'emery', first_name: 'liz', address: '357 Some ave', city: 'SomeTown' , state: 'Illinois', zip: '60542', home_phone: '6897541235',
    cell_phone: '6872654132', office_phone: '235146215', faculty_id: fac1.faculty_id, user_id: user3.id, created_at: '2015-04-3 12:54:35', updated_at: '2015-12-3 10:54:35' )


pe1 = VehiclePermit.create(vehicle_permit_id: '38546', date_issued: '2017-08-25 10:00:35', issued_by: 'Steve' ,date_entered: '2017-08-25', entered_by: fac1.first_name + ' ' + fac1.last_name , user_id: user3.id, created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')


vh1 = Vehicle.create(year: '2009', color: 'red', make: 'Ford', model: 'Fiesta', license_number: 'K59879515', state_licensed: 'IL',
     experation_year: '2020', vehicle_permit_id: pe1.vehicle_permit_id, faculty_id: fac1.faculty_id, user_id: user3.id,  created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')

user6 = User.create!(email: 'studenttwo@email.com', password: 'learner', created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35', position: 'Student')
stud2 = Student.create(student_id: '9876543', last_name: 'Ryan', first_name: 'Dan', home_address: '567 Construction St' ,home_city: 'Lake Forest' ,home_state: 'Illinois',
    home_zip: '64126',school_year_address: '156 Lake St', school_year_city: 'Aurora', school_year_zip: '60505', room_number: 'NULL', home_phone: '3313568794',
    cell_phone: '3526498752', new_student: '0', returning_student: '1', athletic_team: 'NULL', user_id: user6.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')
ec2 = EmergencyContact.create(last_name: 'Ryan', first_name: 'Sam', address: '567 Construction St', city: 'Lake Forest' , state: 'Illinois', zip: '64126', home_phone: '3313568794',
    cell_phone: '3315648925', office_phone: 'NULL', student_id: stud2.id, user_id: user6.id, created_at: '2015-04-3 12:54:35', updated_at: '2015-12-3 10:54:35' )


pe2 = VehiclePermit.create(vehicle_permit_id: '38567', date_issued: '2017-08-25 10:20:42', issued_by: 'Paul' ,date_entered: '2017-08-25', entered_by: stud2.first_name + ' ' + stud2.last_name , user_id: user6.id, created_at: '2017-08-25 10:20:41', updated_at: '2017-08-25 10:20:42')


vh2 = Vehicle.create(year: '2014', color: 'blue', make: 'Lexus', model: 'IS', license_number: 'M35486514', state_licensed: 'IL',
     experation_year: '2025', vehicle_permit_id: pe2.vehicle_permit_id, student_id: stud2.student_id, user_id: user6.id,  created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')
user7 = User.create!(email: 'teacher02@email.com', password: 'study2', created_at: '2017-01-01 10:00:00', updated_at: '2017-06-20 10:04:00', position: 'Faculty')
fac2 = Faculty.create(faculty_id: '3568971', last_name: 'Grosby', first_name: 'Maxwell', home_address: '351 Waterfall rd' , city: 'Batavia' , state: 'Illinois',
     zip: '60352', home_phone: '3316598241', cell_phone: '6302569874', office_phone: '6302354681', new_faculty: '1', department: 'Math', office: 'Dun 217',
     user_id: user7.id, created_at: '2017-01-01 10:00:02', updated_at: '2017-06-20 10:04:00')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
AdminUser.create!(email: 'coolguy@example.com', password: 'coolpose', password_confirmation: 'coolpose')
AdminUser.create!(email: 'otherbro@example.com', password: 'special', password_confirmation: 'special')
AdminUser.create!(email: 'someguy@example.com', password: 'glader', password_confirmation: 'glader')
AdminUser.create!(email: 'gentleman@example.com', password: 'charger', password_confirmation: 'charger')

user8 = User.create!(email: 'curlymoe@email.com', password: 'threehead', created_at: '2017-02-01 10:00:00', updated_at: '2017-06-20 10:04:00', position: 'Faculty')
user9 = User.create!(email: 'moelarry@email.com', password: 'headthree', created_at: '2014-03-01 10:00:00', updated_at: '2017-06-20 10:04:00', position: 'Faculty')
user10 = User.create!(email: 'larrycurly@email.com', password: 'bonehead', created_at: '2015-04-01 10:00:00', updated_at: '2017-06-20 10:04:00', position: 'Faculty')

fac3 = Faculty.create(faculty_id: '0258613', last_name: 'Moe', first_name: 'Moe', home_address: '123 Stooge rd' , city: 'Chicago' , state: 'Illinois',
     zip: '60352', home_phone: '6305879520', cell_phone: '6309758241', new_faculty: '1', department: 'Science', office: 'Dun 101',
     user_id: user9.id, created_at: '2014-03-01 10:00:02', updated_at: '2017-06-20 10:04:00')
fac4 = Faculty.create(faculty_id: '0259621', last_name: 'Larry', first_name: 'Larry', home_address: '123 Stooge rd' , city: 'Chicago' , state: 'Illinois',
     zip: '60352', home_phone: '6305879520', new_faculty: '1', department: 'Engineering', office: 'Dun 101',
     user_id: user10.id, created_at: '2015-04-01 10:00:02', updated_at: '2017-06-20 10:04:00')
fac5 = Faculty.create(faculty_id: '0256987', last_name: 'Curly', first_name: 'Curly', home_address: '123 Stooge rd' , city: 'Chicago' , state: 'Illinois',
     zip: '60352', office_phone: '6302354681', new_faculty: '1', department: 'Math', office: 'Dun 101',
     user_id: user8.id, created_at: '2017-02-01 10:00:02', updated_at: '2017-06-20 10:04:00')

user11 = User.create!(email: 'studentschool@email.com', password: 'sporty', created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35', position: 'Student')
user12 = User.create!(email: 'studentapart@email.com', password: 'loonytune', created_at: '2016-05-25 11:00:35', updated_at: '2016-05-20 11:44:35', position: 'Student')
user13 = User.create!(email: 'studentstudio@email.com', password: 'cheezit', created_at: '2016-05-25 12:00:35', updated_at: '2016-07-20 11:44:35', position: 'Student')

stud3 = Student.create(student_id: '0983571', last_name: 'Mario', first_name: 'Mario', home_address: '681 Toad St' ,home_city: 'toadsville' ,home_state: 'Arizona',
    home_zip: '35891',school_year_address: '610 Randall St', school_year_city: 'Aurora', school_year_zip: '60505', room_number: '105', home_phone: '6302589631',
    cell_phone: '3317854692', new_student: '1', returning_student: '0', athletic_team: 'Football', user_id: user11.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')
stud4 = Student.create(student_id: '3871596', last_name: 'Mario', first_name: 'Luigi', home_address: '365 Legacy Ln' ,home_city: 'toadinton' ,home_state: 'Delaware',
    home_zip: '24937',school_year_address: '610 Randall St', school_year_city: 'Aurora', school_year_zip: '60505', room_number: '106', home_phone: '6305793510',
    cell_phone: '3319876203', new_student: '1', returning_student: '0', athletic_team: 'Track', user_id: user12.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')
stud5 = Student.create(student_id: '0823654', last_name: 'Skywalker', first_name: 'Luke', home_address: '492 Surpirse Bvld' ,home_city: 'Moonshine' ,home_state: 'Wyoming',
    home_zip: '92828',school_year_address: '610 Randall St', school_year_city: 'Aurora', school_year_zip: '60505', room_number: '107', home_phone: '6305493152',
    cell_phone: '3316569434', new_student: '1', returning_student: '0', athletic_team: 'Golf', user_id: user13.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')

ec3 = EmergencyContact.create(last_name: 'Hill', first_name: 'Hank', address: '568 Honeywell St', city: 'Jamming' , state: 'Texas', zip: '28715', home_phone: '5864148563',
    cell_phone: '3315553232', office_phone: '5486532013', faculty_id: fac4.faculty_id, user_id: user10.id, created_at: '2017-03-3 12:54:35', updated_at: '2017-12-3 10:54:35' )
ec4 = EmergencyContact.create(last_name: 'Simpson', first_name: 'Homer', address: '645 Gladmin Rd', city: 'Lipskin' , state: 'North Dakota', zip: '45871', home_phone: '8456754685',
    cell_phone: '4586456892', student_id: stud4.id, user_id: user12.id, created_at: '2017-04-3 12:54:35', updated_at: '2017-12-3 10:54:35' )
ec5 = EmergencyContact.create(last_name: 'Myers', first_name: 'Frank', address: '452 Lasky Ln', city: 'SomeTown' , state: 'South Dakota', zip: '45683', home_phone: '1485695689',
    cell_phone: '4586784567', student_id: stud5.id, user_id: user13.id, created_at: '2017-05-3 12:54:35', updated_at: '2017-12-3 10:54:35' )

pe3 = VehiclePermit.create(vehicle_permit_id: '02134568', date_issued: '2017-08-05 10:20:42', issued_by: 'Paul' ,date_entered: '2017-08-03', 
    entered_by: fac4.first_name + ' ' + fac4.last_name , user_id: user10.id, created_at: '2017-08-05 10:20:41', updated_at: '2017-08-25 10:20:42')
pe4 = VehiclePermit.create(vehicle_permit_id: '45867235', date_issued: '2017-07-19 10:20:42', issued_by: 'John' ,date_entered: '2017-07-15', 
    entered_by: stud4.first_name + ' ' + stud4.last_name , user_id: user12.id, created_at: '2017-07-19 10:20:41', updated_at: '2017-08-25 10:20:42')
pe5 = VehiclePermit.create(vehicle_permit_id: '543683654', date_issued: '2017-01-10 10:20:42', issued_by: 'Lucius' ,date_entered: '2017-01-05', 
    entered_by: stud5.first_name + ' ' + stud5.last_name , user_id: user13.id, created_at: '2017-01-10 10:20:41', updated_at: '2017-08-25 10:20:42')

vh2 = Vehicle.create(year: '2010', color: 'Orange', make: 'BMW', model: 'X3', license_number: 'G53684554', state_licensed: 'IL',
     experation_year: '2020', vehicle_permit_id: pe3.vehicle_permit_id, faculty_id: fac4.faculty_id, user_id: user10.id,  created_at: '2012-01-25 10:00:35', updated_at: '2017-12-20 11:44:35')
vh2 = Vehicle.create(year: '2003', color: 'Purple', make: 'Honda', model: 'Accord', license_number: 'V45865848', state_licensed: 'DE',
     experation_year: '2021', vehicle_permit_id: pe4.vehicle_permit_id, student_id: stud4.student_id, user_id: user12.id,  created_at: '2012-06-25 11:15:03', updated_at: '2017-12-20 11:44:35')
vh2 = Vehicle.create(year: '2016', color: 'White', make: 'Chevrolet', model: 'Traverse', license_number: 'P45864869', state_licensed: 'WY',
     experation_year: '2019', vehicle_permit_id: pe5.vehicle_permit_id, student_id: stud5.student_id, user_id: user13.id,  created_at: '2012-08-25 12:01:36', updated_at: '2017-11-20 11:44:35')



puts "#{user1.id}"
puts "Added #{User.count} users"
puts "Added #{Student.count} students"
puts "Added #{Faculty.count} faculty"
puts "Added #{EmergencyContact.count} emergency contacts"
puts "Added #{Vehicle.count} vehicles"
puts "Added #{VehiclePermit.count} vehicle permits"
