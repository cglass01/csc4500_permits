require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { athletic_team: @student.athletic_team, cell_phone: @student.cell_phone, first_name: @student.first_name, home_address: @student.home_address, home_city: @student.home_city, home_phone: @student.home_phone, home_state: @student.home_state, home_zip: @student.home_zip, last_name: @student.last_name, new_student: @student.new_student, returning_student: @student.returning_student, room_number: @student.room_number, school_year_address: @student.school_year_address, school_year_city: @student.school_year_city, school_year_zip: @student.school_year_zip } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { athletic_team: @student.athletic_team, cell_phone: @student.cell_phone, first_name: @student.first_name, home_address: @student.home_address, home_city: @student.home_city, home_phone: @student.home_phone, home_state: @student.home_state, home_zip: @student.home_zip, last_name: @student.last_name, new_student: @student.new_student, returning_student: @student.returning_student, room_number: @student.room_number, school_year_address: @student.school_year_address, school_year_city: @student.school_year_city, school_year_zip: @student.school_year_zip } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
