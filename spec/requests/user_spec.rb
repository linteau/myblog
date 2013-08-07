require 'spec_helper'

describe "User" do
  subject { page }
  
  describe "goes to signup page do" do
    before { visit signup_path }
    
    it {should have_selector('h2', text: 'Sign up')}
  
    describe "signs up with valid information" do
      before do
        fill_in "user_email", with: "example@email.com"
        fill_in "user_password", with: "foobarbar"
        fill_in "user_password_confirmation", with: "foobarbar"
        click_button "Sign up"
      end
      it { should have_selector('h1', text: "list of all plog posts go here")}
    end
  end
  describe "goes to signin page" do
    let(:user) { FactoryGirl.create(:user) }
    
    before { visit signin_path }
    it {should have_selector('h2', text: 'Sign in') }
    
    describe "sign in with valid info" do
      before { sign_in(user) }
      it { should have_selector('h1', text: "list of all plog posts go here")}
      it { should have_selector('li', text: 'Logout') }
      it { should_not have_selector('li', text: 'Login') }
    end
  end
  
  # describe "not admin" do
#     before { visit root_path }
#     
#     it { should_not have_selector('li', text: 'Login' ) }
#     it { should_not have_selector('li', text: 'Logout' ) }    
#     
#   end
end