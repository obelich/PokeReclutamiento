require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :names => "MyString",
      :lastname => "MyString",
      :mothername => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_names[name=?]", "person[names]"

      assert_select "input#person_lastname[name=?]", "person[lastname]"

      assert_select "input#person_mothername[name=?]", "person[mothername]"
    end
  end
end
