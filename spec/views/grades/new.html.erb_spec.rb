require 'rails_helper'

RSpec.describe "grades/new", :type => :view do
  before(:each) do
    assign(:grade, Grade.new(
      :person => nil,
      :assignment => nil,
      :value => 1
    ))
  end

  it "renders new grade form" do
    render

    assert_select "form[action=?][method=?]", grades_path, "post" do

      assert_select "input#grade_person_id[name=?]", "grade[person_id]"

      assert_select "input#grade_assignment_id[name=?]", "grade[assignment_id]"

      assert_select "input#grade_value[name=?]", "grade[value]"
    end
  end
end
