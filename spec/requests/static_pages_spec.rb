require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'Sample App' and title 'home'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Sample App')
		page.should have_selector('title',
		            :text => "Ruby on Rails Tutorial Sample App | Home")
    end
    it "should have the h1 'Sample App'" do
		visit '/static_pages/home'
		page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
		visit '/static_pages/home'
		page.should have_selector('title',
		            :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end
  
  describe "Help page" do
	it "should have the h1 'Help' and title 'Help'" do
		visit '/static_pages/help'
		page.should have_selector('h1', :text => 'Help')
		page.should have_selector('title',
		            :text => "Ruby on Rails Tutorial Sample App | Help")
	end
  end
  
  describe "should have the h1 'About Us' and title 'About Us'"  do
    it "should have the content 'About Us'" do
		visit '/static_pages/about'
		page.should have_selector('h1', :text => 'About Us')
		page.should have_selector('title',
		            :text => "Ruby on Rails Tutorial Sample App | About")
    end
  end
  
  
end

