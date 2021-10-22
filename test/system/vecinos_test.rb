require "application_system_test_case"

class VecinosTest < ApplicationSystemTestCase
  setup do
    @vecino = vecinos(:one)
  end

  test "visiting the index" do
    visit vecinos_url
    assert_selector "h1", text: "Vecinos"
  end

  test "creating a Vecino" do
    visit vecinos_url
    click_on "New Vecino"

    fill_in "Apellidom", with: @vecino.apellidom
    fill_in "Apellidop", with: @vecino.apellidop
    fill_in "Direccion", with: @vecino.direccion
    fill_in "Educacion", with: @vecino.educacion
    fill_in "Idioma", with: @vecino.idioma
    fill_in "Nacimiento", with: @vecino.nacimiento
    fill_in "Nombre", with: @vecino.nombre
    fill_in "Rut", with: @vecino.rut
    fill_in "Tipo", with: @vecino.tipo
    click_on "Create Vecino"

    assert_text "Vecino was successfully created"
    click_on "Back"
  end

  test "updating a Vecino" do
    visit vecinos_url
    click_on "Edit", match: :first

    fill_in "Apellidom", with: @vecino.apellidom
    fill_in "Apellidop", with: @vecino.apellidop
    fill_in "Direccion", with: @vecino.direccion
    fill_in "Educacion", with: @vecino.educacion
    fill_in "Idioma", with: @vecino.idioma
    fill_in "Nacimiento", with: @vecino.nacimiento
    fill_in "Nombre", with: @vecino.nombre
    fill_in "Rut", with: @vecino.rut
    fill_in "Tipo", with: @vecino.tipo
    click_on "Update Vecino"

    assert_text "Vecino was successfully updated"
    click_on "Back"
  end

  test "destroying a Vecino" do
    visit vecinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vecino was successfully destroyed"
  end
end
