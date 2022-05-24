require "application_system_test_case"

class BeneficiosTest < ApplicationSystemTestCase
  setup do
    @beneficio = beneficios(:one)
  end

  test "visiting the index" do
    visit beneficios_url
    assert_selector "h1", text: "Beneficios"
  end

  test "should create beneficio" do
    visit beneficios_url
    click_on "New beneficio"

    fill_in "Nome", with: @beneficio.nome
    click_on "Create Beneficio"

    assert_text "Beneficio was successfully created"
    click_on "Back"
  end

  test "should update Beneficio" do
    visit beneficio_url(@beneficio)
    click_on "Edit this beneficio", match: :first

    fill_in "Nome", with: @beneficio.nome
    click_on "Update Beneficio"

    assert_text "Beneficio was successfully updated"
    click_on "Back"
  end

  test "should destroy Beneficio" do
    visit beneficio_url(@beneficio)
    click_on "Destroy this beneficio", match: :first

    assert_text "Beneficio was successfully destroyed"
  end
end
