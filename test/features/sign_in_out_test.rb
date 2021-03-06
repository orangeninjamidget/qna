require "test_helper"

feature "Sign In Out" do
  scenario "sign in and sign out" do
    sign_in

    page.must_have_content users(:one).email
    page.wont_have_content "Sign In"

    click_on "Sign Out"

    page.must_have_content "Sign Up"
    page.must_have_content "Sign In"
    page.wont_have_content "Sign Out"
  end
end
