require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :form_title => "Form Title",
        :button_text => "Button Text",
        :body => "MyText",
        :mailchimp_api_key => "Mailchimp Api Key",
        :mailchimp_list_id => "Mailchimp List"
      ),
      Page.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :form_title => "Form Title",
        :button_text => "Button Text",
        :body => "MyText",
        :mailchimp_api_key => "Mailchimp Api Key",
        :mailchimp_list_id => "Mailchimp List"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "Form Title".to_s, :count => 2
    assert_select "tr>td", :text => "Button Text".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Mailchimp Api Key".to_s, :count => 2
    assert_select "tr>td", :text => "Mailchimp List".to_s, :count => 2
  end
end
