require 'rails_helper'

RSpec.describe "UserPages", type: :feature do
  subject { page }

  describe "Signup Page" do
    before { visit signup_path }
    it { is_expected.to have_content('Sign up') }
  end
end
