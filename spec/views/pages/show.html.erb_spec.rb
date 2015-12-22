require 'rails_helper'

RSpec.describe "pages/show", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :title => "Title",
      :subtitle => "Subtitle",
      :form_title => "Form Title",
      :button_text => "Button Text",
      :body => "MyText",
      :mailchimp_api_key => "Mailchimp Api Key",
      :mailchimp_list_id => "Mailchimp List"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Subtitle/)
    expect(rendered).to match(/Form Title/)
    expect(rendered).to match(/Button Text/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Mailchimp Api Key/)
    expect(rendered).to match(/Mailchimp List/)
  end
end
