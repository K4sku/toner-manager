require "test_helper"

class PrinterModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @printer_model = printer_models(:one)
  end

  test "should get index" do
    get printer_models_url
    assert_response :success
  end

  test "should get new" do
    get new_printer_model_url
    assert_response :success
  end

  test "should create printer_model" do
    assert_difference("PrinterModel.count") do
      post printer_models_url, params: { printer_model: { fuser_kit: @printer_model.fuser_kit, has_replaceable_fuser: @printer_model.has_replaceable_fuser, has_replaceable_transfer_belt: @printer_model.has_replaceable_transfer_belt, is_color: @printer_model.is_color, make: @printer_model.make, model: @printer_model.model, toner_black: @printer_model.toner_black, toner_cyan: @printer_model.toner_cyan, toner_magenta: @printer_model.toner_magenta, toner_yellow: @printer_model.toner_yellow, transfer_kit: @printer_model.transfer_kit } }
    end

    assert_redirected_to printer_model_url(PrinterModel.last)
  end

  test "should show printer_model" do
    get printer_model_url(@printer_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_printer_model_url(@printer_model)
    assert_response :success
  end

  test "should update printer_model" do
    patch printer_model_url(@printer_model), params: { printer_model: { fuser_kit: @printer_model.fuser_kit, has_replaceable_fuser: @printer_model.has_replaceable_fuser, has_replaceable_transfer_belt: @printer_model.has_replaceable_transfer_belt, is_color: @printer_model.is_color, make: @printer_model.make, model: @printer_model.model, toner_black: @printer_model.toner_black, toner_cyan: @printer_model.toner_cyan, toner_magenta: @printer_model.toner_magenta, toner_yellow: @printer_model.toner_yellow, transfer_kit: @printer_model.transfer_kit } }
    assert_redirected_to printer_model_url(@printer_model)
  end

  test "should destroy printer_model" do
    assert_difference("PrinterModel.count", -1) do
      delete printer_model_url(@printer_model)
    end

    assert_redirected_to printer_models_url
  end
end
