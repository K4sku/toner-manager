# frozen_string_literal: true

require 'test_helper'

class PartKitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part_kit = part_kits(:one)
  end

  test 'should get index' do
    get part_kits_url
    assert_response :success
  end

  test 'should get new' do
    get new_part_kit_url
    assert_response :success
  end

  test 'should create part_kit' do
    assert_difference('PartKit.count') do
      post part_kits_url,
           params: { part_kit: { oem_name: @part_kit.oem_name,
                                 purchase_net_price: @part_kit.purchase_net_price, type: @part_kit.type } }
    end

    assert_redirected_to part_kit_url(PartKit.last)
  end

  test 'should show part_kit' do
    get part_kit_url(@part_kit)
    assert_response :success
  end

  test 'should get edit' do
    get edit_part_kit_url(@part_kit)
    assert_response :success
  end

  test 'should update part_kit' do
    patch part_kit_url(@part_kit),
          params: { part_kit: { oem_name: @part_kit.oem_name,
                                purchase_net_price: @part_kit.purchase_net_price, type: @part_kit.type } }
    assert_redirected_to part_kit_url(@part_kit)
  end

  test 'should destroy part_kit' do
    assert_difference('PartKit.count', -1) do
      delete part_kit_url(@part_kit)
    end

    assert_redirected_to part_kits_url
  end
end
