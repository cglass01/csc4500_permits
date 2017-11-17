# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'superadmin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
#User.create!(email: 'emailcrusher@email.com', password: 'passpass', created_at: '2015-02-3 10:54:35', updated_at: '2015-02-3 10:54:35')
user1 = User.create!(email: 'newsmaker@email.com', password: 'slampass', created_at: '2015-04-3 12:54:35', updated_at: '2015-12-3 10:54:35')
user2 = User.create!(email: 'studenthome@email.com', password: 'learner', created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35', position: 'Student')
user3 = User.create!(email: 'teacherwork@email.com', password: 'study', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'Faculty')
user4 = User.create!(email: 'superadmin@email.com', password: 'admin', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'admin')
user5 = User.create!(email: 'editmon@email.com', password: 'editor', created_at: '2012-08-25 12:05:35', updated_at: '2017-08-25 11:44:35', position: 'editor')
stud1 = Student.create(student_id: '1234567', last_name: 'jacobs', first_name: 'boxer', home_address: '257 Discovery road' ,home_city: 'Rockford' ,home_state: 'Illinois', 
    home_zip: '60106',school_year_address: '257 Discovery road',school_year_city: 'Rockford', school_year_zip: '60106', room_number: 'NULL', home_phone: '3518759989', 
    cell_phone: '9856243571', new_student: '0', returning_student: '1', athletic_team: 'NULL', user_id: user2.id, created_at: '2016-05-25 10:00:35', updated_at: '2016-06-20 11:44:35')
fac1 = Faculty.create(faculty_id: '0983547', last_name: 'Kane', first_name: 'Jeffery', home_address: '156 Lake St' , city: 'Aurora' , state: 'Illinois', 
     zip: '60505', home_phone: '3313568794', cell_phone: '6305896245', office_phone: '6302569874', new_faculty: '0', department: 'Math', office: 'Dun 215', 
     user_id: user3.id, created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')
ec1 = EmergencyContact.create(last_name: 'emery', first_name: 'liz', address: '357 Some ave', city: 'SomeTown' , state: 'Illinois', zip: '60542', home_phone: '6897541235', 
    cell_phone: '6872654132', office_phone: '235146215', student_id: user2.id, faculty_id: 'NULL', user_id: user1.id, created_at: '2015-04-3 12:54:35', updated_at: '2015-12-3 10:54:35' )
vh1 = Vehicle.create(year: '2009', color: 'red', make: 'Ford', model: 'Fiesta', license_number: 'K5987951564831', state_licensed: 'IL',
     experation_year: '2020', permit_id: 'NULL', student_id: 'NULL' faculty_id: fac1.faculty_id, user_id: user3.id,  created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')
pe1 = Permit.create(permit_id: '38546', date_issued: '2017-08-25 10:00:35', issued_by: ,date_entered: '2017-08-25', entered_by: , user_id: user3.id, created_at: '2012-08-25 10:00:35', updated_at: '2017-08-20 11:44:35')



puts "#{user1.id}"
puts "Added #{User.count} users"
puts "Added #{Student.count} students"
puts "Added #{Faculty.count} faculty"
puts "Added #{EmergencyContact.count} emergency contacts"
puts "Added #{Vehicle.count} vehicles"
puts "Added #{Permit.count} permits"