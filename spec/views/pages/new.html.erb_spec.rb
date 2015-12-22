require 'rails_helper'

RSpec.describe "pages/new", type: :view do
  before(:each) do
    assign(:page, Page.new(
      :title => "MyString",
      :subtitle => "MyString",
      :form_title => "MyString",
      :button_text => "MyString",
      :body => "MyText",
      :mailchimp_api_key => "MyString",
      :mailchimp_list_id => "MyString"
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "input#page_subtitle[name=?]", "page[subtitle]"

      assert_select "input#page_form_title[name=?]", "page[form_title]"

      assert_select "input#page_button_text[name=?]", "page[button_text]"

      assert_select "textarea#page_body[name=?]", "page[body]"

      assert_select "input#page_mailchimp_api_key[name=?]", "page[mailchimp_api_key]"

      assert_select "input#page_mailchimp_list_id[name=?]", "page[mailchimp_list_id]"
    end
  end
end
