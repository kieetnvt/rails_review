require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  test "patient has many physicians through appointments" do
    physician = Physician.create(name: "Phys")
    patient = Patient.create(name: "Pat")
    appointment = Appointment.create(patient_id: patient.id, physician_id: physician.id)
    assert_includes patient.physicians, physician
  end
end
