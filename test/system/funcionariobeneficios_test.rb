require "application_system_test_case"

class FuncionariobeneficiosTest < ApplicationSystemTestCase
  setup do
    @funcionariobeneficio = funcionariobeneficios(:one)
  end

  test "visiting the index" do
    visit funcionariobeneficios_url
    assert_selector "h1", text: "Funcionariobeneficios"
  end

  test "should create funcionariobeneficio" do
    visit funcionariobeneficios_url
    click_on "New funcionariobeneficio"

    fill_in "Altura", with: @funcionariobeneficio.altura
    fill_in "Beneficio", with: @funcionariobeneficio.beneficio_id
    fill_in "Funcionario", with: @funcionariobeneficio.funcionario_id
    fill_in "Horas meditadas", with: @funcionariobeneficio.horas_meditadas
    fill_in "Peso", with: @funcionariobeneficio.peso
    click_on "Create Funcionariobeneficio"

    assert_text "Funcionariobeneficio was successfully created"
    click_on "Back"
  end

  test "should update Funcionariobeneficio" do
    visit funcionariobeneficio_url(@funcionariobeneficio)
    click_on "Edit this funcionariobeneficio", match: :first

    fill_in "Altura", with: @funcionariobeneficio.altura
    fill_in "Beneficio", with: @funcionariobeneficio.beneficio_id
    fill_in "Funcionario", with: @funcionariobeneficio.funcionario_id
    fill_in "Horas meditadas", with: @funcionariobeneficio.horas_meditadas
    fill_in "Peso", with: @funcionariobeneficio.peso
    click_on "Update Funcionariobeneficio"

    assert_text "Funcionariobeneficio was successfully updated"
    click_on "Back"
  end

  test "should destroy Funcionariobeneficio" do
    visit funcionariobeneficio_url(@funcionariobeneficio)
    click_on "Destroy this funcionariobeneficio", match: :first

    assert_text "Funcionariobeneficio was successfully destroyed"
  end
end
