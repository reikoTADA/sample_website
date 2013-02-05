# encoding: utf-8

もし /^"(.*?)"ページを表示する$/ do |page_name|
  if page_name == "トップ"
    path = "/"
  elsif page_name == "about"
    path = "/about"
  elsif page_name == "お問い合わせ"
    path = "/contacts"
  end
  visit path
end

ならば /^"(.*?)"と表示されていること$/ do |text|
  page.should have_content(text)
end
