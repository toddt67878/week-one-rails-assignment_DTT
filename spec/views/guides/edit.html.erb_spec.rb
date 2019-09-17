require 'rails_helper'

RSpec.describe "guides/edit", type: :view do
  before(:each) do
    @guide = assign(:guide, Guide.create!(
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit guide form" do
    render

    assert_select "form[action=?][method=?]", guide_path(@guide), "post" do

      assert_select "input[name=?]", "guide[title]"

      assert_select "textarea[name=?]", "guide[content]"
    end
  end
end
