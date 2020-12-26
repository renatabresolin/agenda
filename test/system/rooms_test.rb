require "application_system_test_case"

class RoomsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
    assert_selector "h2", text: "Salas de Reuniões"
  end

  test "lets a signed in user create a new room" do
    login_as users(:george)
    visit new_room_path

    fill_in "room_name", with: "Important Meeting"

    click_on 'Salvar'

  end
end


