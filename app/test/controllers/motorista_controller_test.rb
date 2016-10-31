require 'test_helper'

class MotoristaControllerTest < ActionController::TestCase
  setup do
    @motoristum = motorista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motorista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motoristum" do
    assert_difference('Motoristum.count') do
      post :create, motoristum: { cpf: @motoristum.cpf, latitude: @motoristum.latitude, longitude: @motoristum.longitude, nome: @motoristum.nome, tipo_caminhao: @motoristum.tipo_caminhao }
    end

    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should show motoristum" do
    get :show, id: @motoristum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motoristum
    assert_response :success
  end

  test "should update motoristum" do
    patch :update, id: @motoristum, motoristum: { cpf: @motoristum.cpf, latitude: @motoristum.latitude, longitude: @motoristum.longitude, nome: @motoristum.nome, tipo_caminhao: @motoristum.tipo_caminhao }
    assert_redirected_to motoristum_path(assigns(:motoristum))
  end

  test "should destroy motoristum" do
    assert_difference('Motoristum.count', -1) do
      delete :destroy, id: @motoristum
    end

    assert_redirected_to motorista_path
  end
end
