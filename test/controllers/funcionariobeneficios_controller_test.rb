require "test_helper"

class FuncionariobeneficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcionariobeneficio = funcionariobeneficios(:one)
  end

  test "should get index" do
    get funcionariobeneficios_url
    assert_response :success
  end

  test "should get new" do
    get new_funcionariobeneficio_url
    assert_response :success
  end

  test "should create funcionariobeneficio" do
    assert_difference("Funcionariobeneficio.count") do
      post funcionariobeneficios_url, params: { funcionariobeneficio: { altura: @funcionariobeneficio.altura, beneficio_id: @funcionariobeneficio.beneficio_id, funcionario_id: @funcionariobeneficio.funcionario_id, horas_meditadas: @funcionariobeneficio.horas_meditadas, peso: @funcionariobeneficio.peso } }
    end

    assert_redirected_to funcionariobeneficio_url(Funcionariobeneficio.last)
  end

  test "should show funcionariobeneficio" do
    get funcionariobeneficio_url(@funcionariobeneficio)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcionariobeneficio_url(@funcionariobeneficio)
    assert_response :success
  end

  test "should update funcionariobeneficio" do
    patch funcionariobeneficio_url(@funcionariobeneficio), params: { funcionariobeneficio: { altura: @funcionariobeneficio.altura, beneficio_id: @funcionariobeneficio.beneficio_id, funcionario_id: @funcionariobeneficio.funcionario_id, horas_meditadas: @funcionariobeneficio.horas_meditadas, peso: @funcionariobeneficio.peso } }
    assert_redirected_to funcionariobeneficio_url(@funcionariobeneficio)
  end

  test "should destroy funcionariobeneficio" do
    assert_difference("Funcionariobeneficio.count", -1) do
      delete funcionariobeneficio_url(@funcionariobeneficio)
    end

    assert_redirected_to funcionariobeneficios_url
  end
end
