# frozen_string_literal: true

require 'application_system_test_case'

class PrinterModelsTest < ApplicationSystemTestCase
  setup do
    @printer_model = printer_models(:one)
  end

  test 'visiting the index' do
    visit printer_models_url
    assert_selector 'h1', text: 'Printer models'
  end

  test 'should create printer model' do
    visit printer_models_url
    click_on 'New printer model'

    fill_in 'Fuser kit', with: @printer_model.fuser_kit
    check 'Has replaceable fuser' if @printer_model.has_replaceable_fuser
    check 'Has replaceable transfer belt' if @printer_model.has_replaceable_transfer_belt
    check 'Is color' if @printer_model.is_color
    fill_in 'Make', with: @printer_model.make
    fill_in 'Model', with: @printer_model.model
    fill_in 'Toner black', with: @printer_model.toner_black
    fill_in 'Toner cyan', with: @printer_model.toner_cyan
    fill_in 'Toner magenta', with: @printer_model.toner_magenta
    fill_in 'Toner yellow', with: @printer_model.toner_yellow
    fill_in 'Transfer kit', with: @printer_model.transfer_kit
    click_on 'Create Printer model'

    assert_text 'Printer model was successfully created'
    click_on 'Back'
  end

  test 'should update Printer model' do
    visit printer_model_url(@printer_model)
    click_on 'Edit this printer model', match: :first

    fill_in 'Fuser kit', with: @printer_model.fuser_kit
    check 'Has replaceable fuser' if @printer_model.has_replaceable_fuser
    check 'Has replaceable transfer belt' if @printer_model.has_replaceable_transfer_belt
    check 'Is color' if @printer_model.is_color
    fill_in 'Make', with: @printer_model.make
    fill_in 'Model', with: @printer_model.model
    fill_in 'Toner black', with: @printer_model.toner_black
    fill_in 'Toner cyan', with: @printer_model.toner_cyan
    fill_in 'Toner magenta', with: @printer_model.toner_magenta
    fill_in 'Toner yellow', with: @printer_model.toner_yellow
    fill_in 'Transfer kit', with: @printer_model.transfer_kit
    click_on 'Update Printer model'

    assert_text 'Printer model was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Printer model' do
    visit printer_model_url(@printer_model)
    click_on 'Destroy this printer model', match: :first

    assert_text 'Printer model was successfully destroyed'
  end
end
