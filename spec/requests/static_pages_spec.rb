require 'spec_helper'

describe "StaticPages" do
  subject { page }  
  describe "home page" do
    before { visit root_path }    
    it {should have_title('My Blog')}
    it { should have_selector('h1', text: "list of all plog posts go here")}
    
    describe "title links to right pages" do
      before { click_link "Andy's Blog" }
      it {should have_title('My Blog')}
      it { should have_selector('h1', text: "list of all plog posts go here")}
    end
    
    describe "about link goes to right page" do
      before { click_link "About" }
      it { should have_title('a blog')}
      it { should have_selector('h1', text: "About me")}
    end
  end
    
  describe "go to admin page" do
    before { visit admin_path }
    
    it { should have_title('Admin') }
  end 
end
