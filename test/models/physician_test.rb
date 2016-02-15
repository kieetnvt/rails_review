require 'test_helper'

class PhysicianTest < ActiveSupport::TestCase
  test "physician has many patients through appointments" do
    physician = Physician.create(name: "Phys")
    patient = Patient.create(name: "Pat")
    appointment = Appointment.create(patient_id: patient.id, physician_id: physician.id)
    assert_includes physician.patients, patient
  end
end
