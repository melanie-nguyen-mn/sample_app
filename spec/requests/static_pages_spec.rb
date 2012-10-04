require 'spec_helper'

describe "StaticPages" do
  let (:base_title) { "Ruby on Rails Tutorial Sample App" } 
  describe "Home page" do
    it "should have the h1 'Sample App' and title 'home'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Sample App')
		page.should have_selector('title',
		            :text => "#{base_title} | Home")
    end
    it "should have the h1 'Sample App'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('title',
		            :text => "#{base_title} | Home")
    end
  end
  
  describe "Help page" do
	it "should have the h1 'Help' and title 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('h1', :text => 'Help')
		page.should have_selector('title',
		            :text => "#{base_title} | Help")
	end
  end
  
  describe "should have the h1 'About Us' and title 'About Us'"  do
    it "should have the content 'About Us'" do
		visit '/static_pages/about'
		page.should have_selector('h1', :text => 'About Us')
		page.should have_selector('title',
		            :text => "#{base_title} | About")
    end
  end
  
  describe "should have the 'Contact Us' and title 'Contact Us')" do
	it "should have h1 'Contact Us' and title 'Contact Us'" do
		visit '/static_pages/contact'
		page.should have_selector('h1', :text => 'Contact Us')
		page.should have_selector('title', :text => "#{base_title} | Contact Us")
	end
  end
    
end

