require 'rails_helper'

RSpec.describe "StaticPages", :type => :feature do

  subject { page }

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Homepage" do
    before { visit root_path }

    it { is_expected.to have_content('Sample App') }
    it { is_expected.to have_title("#{base_title}") }
    it { is_expected.not_to have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { is_expected.to have_content('Help') }
    it { is_expected.to have_title("Help | #{base_title}") }
  end

  describe "About page" do
    before { visit about_path }

    it { is_expected.to have_content('About') }
    it { is_expected.to have_title("About | #{base_title}") }
  end




end
