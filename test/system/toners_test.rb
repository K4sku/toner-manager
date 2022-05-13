# frozen_string_literal: true

require 'application_system_test_case'

class TonersTest < ApplicationSystemTestCase
  setup do
    @toner = toners(:one)
  end

  test 'visiting the index' do
    visit toners_url
    assert_selector 'h1', text: 'Toners'
  end

  test 'should create toner' do
    visit toners_url
    click_on 'New toner'

    fill_in 'Color', with: @toner.color
    fill_in 'Oem name', with: @toner.oem_name
    fill_in 'Purchase net price', with: @toner.purchase_net_price
    fill_in 'Type', with: @toner.type
    click_on 'Create Toner'

    assert_text 'Toner was successfully created'
    click_on 'Back'
  end

  test 'should update Toner' do
    visit toner_url(@toner)
    click_on 'Edit this toner', match: :first

    fill_in 'Color', with: @toner.color
    fill_in 'Oem name', with: @toner.oem_name
    fill_in 'Purchase net price', with: @toner.purchase_net_price
    fill_in 'Type', with: @toner.type
    click_on 'Update Toner'

    assert_text 'Toner was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Toner' do
    visit toner_url(@toner)
    click_on 'Destroy this toner', match: :first

    assert_text 'Toner was successfully destroyed'
  end
end
