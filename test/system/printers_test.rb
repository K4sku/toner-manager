require "application_system_test_case"

class PrintersTest < ApplicationSystemTestCase
  setup do
    @printer = printers(:one)
  end

  test "visiting the index" do
    visit printers_url
    assert_selector "h1", text: "Printers"
  end

  test "should create printer" do
    visit printers_url
    click_on "New printer"

    fill_in "Asset", with: @printer.asset_id
    fill_in "Ip reservation", with: @printer.ip_reservation
    fill_in "Location", with: @printer.location
    fill_in "Name", with: @printer.name
    fill_in "Primary user", with: @printer.primary_user
    fill_in "Purchase date", with: @printer.purchase_date
    fill_in "Purchase net price", with: @printer.purchase_net_price
    click_on "Create Printer"

    assert_text "Printer was successfully created"
    click_on "Back"
  end

  test "should update Printer" do
    visit printer_url(@printer)
    click_on "Edit this printer", match: :first

    fill_in "Asset", with: @printer.asset_id
    fill_in "Ip reservation", with: @printer.ip_reservation
    fill_in "Location", with: @printer.location
    fill_in "Name", with: @printer.name
    fill_in "Primary user", with: @printer.primary_user
    fill_in "Purchase date", with: @printer.purchase_date
    fill_in "Purchase net price", with: @printer.purchase_net_price
    click_on "Update Printer"

    assert_text "Printer was successfully updated"
    click_on "Back"
  end

  test "should destroy Printer" do
    visit printer_url(@printer)
    click_on "Destroy this printer", match: :first

    assert_text "Printer was successfully destroyed"
  end
end
