require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('HamSab') }
    it { should have_title(full_title('')) }
    it { should_not have_title('Home') }
  end

  describe "Leaders page" do
    before { visit leaders_path }

    it { should have_content('') }
    it { should have_title(full_title('Leaders')) }
  end
  
  describe "Places page" do
    before { visit places_path }

    it { should have_content('') }
    it { should have_title(full_title('Places')) }
  end
  
  describe "Parties page" do
    before { visit parties_path }

    it { should have_content('') }
    it { should have_title(full_title('Parties')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end
end
