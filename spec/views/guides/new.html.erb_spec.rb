require 'rails_helper'

RSpec.describe "guides/new", type: :view do
  before(:each) do
    assign(:guide, Guide.new(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new guide form" do
    render

    assert_select "form[action=?][method=?]", guides_path, "post" do

      assert_select "input[name=?]", "guide[title]"

      assert_select "textarea[name=?]", "guide[content]"
    end
  end
end
