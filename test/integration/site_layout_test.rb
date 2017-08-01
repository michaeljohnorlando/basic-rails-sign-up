require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
   test "layout links" do
     get root_path
     assert_template 'static_pages/home'
     assert_select ":a[hret=?]", root_path, count: 2
     assert_select ":a[hret=?]", help_path
     assert_select ":a[hret=?]", about_path
     assert_select ":a[hret=?]", contact_path
   end
end
