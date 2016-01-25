require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :names => "Names",
      :lastname => "Lastname",
      :mothername => "Mothername"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Names/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Mothername/)
  end
end
