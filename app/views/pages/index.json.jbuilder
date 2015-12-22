json.array!(@pages) do |page|
  json.extract! page, :id, :title, :subtitle, :form_title, :button_text, :body, :mailchimp_api_key, :mailchimp_list_id
  json.url page_url(page, format: :json)
end
