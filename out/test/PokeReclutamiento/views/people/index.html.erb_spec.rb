require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :names => "Names",
        :lastname => "Lastname",
        :mothername => "Mothername"
      ),
      Person.create!(
        :names => "Names",
        :lastname => "Lastname",
        :mothername => "Mothername"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Names".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Mothername".to_s, :count => 2
  end
end
