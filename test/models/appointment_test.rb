require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "appointment belongs to patient and physician" do
    physician = Physician.create(name: "Phys")
    patient = Patient.create(name: "Pat")
    appointment = Appointment.create(patient_id: patient.id, physician_id: physician.id)
    assert_equal appointment.patient, patient
    assert_equal appointment.physician, physician
  end
end
