require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :names => "MyString",
      :lastname => "MyString",
      :mothername => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_names[name=?]", "person[names]"

      assert_select "input#person_lastname[name=?]", "person[lastname]"

      assert_select "input#person_mothername[name=?]", "person[mothername]"
    end
  end
end