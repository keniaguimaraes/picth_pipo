require "test_helper"

class BeneficiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beneficio = beneficios(:one)
  end

  test "should get index" do
    get beneficios_url
    assert_response :success
  end

  test "should get new" do
    get new_beneficio_url
    assert_response :success
  end

  test "should create beneficio" do
    assert_difference("Beneficio.count") do
      post beneficios_url, params: { beneficio: { nome: @beneficio.nome } }
    end

    assert_redirected_to beneficio_url(Beneficio.last)
  end

  test "should show beneficio" do
    get beneficio_url(@beneficio)
    assert_response :success
  end

  test "should get edit" do
    get edit_beneficio_url(@beneficio)
    assert_response :success
  end

  test "should update beneficio" do
    patch beneficio_url(@beneficio), params: { beneficio: { nome: @beneficio.nome } }
    assert_redirected_to beneficio_url(@beneficio)
  end

  test "should destroy beneficio" do
    assert_difference("Beneficio.count", -1) do
      delete beneficio_url(@beneficio)
    end

    assert_redirected_to beneficios_url
  end
end
