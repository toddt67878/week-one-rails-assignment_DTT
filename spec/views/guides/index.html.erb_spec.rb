require 'rails_helper'

RSpec.describe "guides/index", type: :view do
  before(:each) do
    assign(:guides, [
      Guide.create!(
        :title => "Title",
        :content => "MyText"
      ),
      Guide.create!(
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of guides" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
