require 'test_helper'

class UserTest < ActiveSupport::TestCase

RSpec.describe 'Hello world', type: :feature do
  scenario 'index page' do
    visit hello_world_index_path
    expect(page).to have_content('Hello, world!')
  end
end
end
