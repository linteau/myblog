require 'spec helper'

feature "StaticPages" do
  subject { page }  
  describe "home page" do
    before { visit root_path }    
    it "aasdfsd" do
      expect(page).to have_content('Sample App')
    end
  end
end