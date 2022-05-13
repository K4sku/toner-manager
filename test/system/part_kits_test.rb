# frozen_string_literal: true

require 'application_system_test_case'

class PartKitsTest < ApplicationSystemTestCase
  setup do
    @part_kit = part_kits(:one)
  end

  test 'visiting the index' do
    visit part_kits_url
    assert_selector 'h1', text: 'Part kits'
  end

  test 'should create part kit' do
    visit part_kits_url
    click_on 'New part kit'

    fill_in 'Oem name', with: @part_kit.oem_name
    fill_in 'Purchase net price', with: @part_kit.purchase_net_price
    fill_in 'Type', with: @part_kit.type
    click_on 'Create Part kit'

    assert_text 'Part kit was successfully created'
    click_on 'Back'
  end

  test 'should update Part kit' do
    visit part_kit_url(@part_kit)
    click_on 'Edit this part kit', match: :first

    fill_in 'Oem name', with: @part_kit.oem_name
    fill_in 'Purchase net price', with: @part_kit.purchase_net_price
    fill_in 'Type', with: @part_kit.type
    click_on 'Update Part kit'

    assert_text 'Part kit was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Part kit' do
    visit part_kit_url(@part_kit)
    click_on 'Destroy this part kit', match: :first

    assert_text 'Part kit was successfully destroyed'
  end
end
