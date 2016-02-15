require 'test_helper'

class AssemblyTest < ActiveSupport::TestCase
  test "assembly has many parts" do
    assembly = Assembly.create(name: "Ass")
    part = assembly.parts.create(part_number: "01")
    assert_includes assembly.parts, part
    assert_includes part.assemblies, assembly
  end
end
