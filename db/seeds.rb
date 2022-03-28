# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

toner415a_black = TonerModel.black.new(:make => "HP", :model => "415A", :symbol => "W2030A")
toner415a_cyan = TonerModel.cyan.new(:make => "HP", :model => "415A", :symbol => "W2031A")
toner415a_yellow = TonerModel.yellow.new(:make => "HP", :model => "415A", :symbol => "W2032A")
toner415a_magenta = TonerModel.magenta.new(:make => "HP", :model => "415A", :symbol => "W2033A")
toner415a_black.save
toner415a_cyan.save
toner415a_yellow.save
toner415a_magenta.save

toner415x_black = TonerModel.black.new(:make => "HP", :model => "415A", :symbol => "W2030x")
toner415x_cyan = TonerModel.cyan.new(:make => "HP", :model => "415A", :symbol => "W2031x")
toner415x_yellow = TonerModel.yellow.new(:make => "HP", :model => "415A", :symbol => "W2032x")
toner415x_magenta = TonerModel.magenta.new(:make => "HP", :model => "415A", :symbol => "W2033x")
toner415x_black.save
toner415x_cyan.save
toner415x_yellow.save
toner415x_magenta.save

printer_M479 = PrinterModel.new(:make => "HP", :model => "LaserJet Pro MFP M479", :is_color => true, 
    :has_replaceable_fuser => false, :has_replaceable_transfer_belt => false,
    :toner_models => [toner415a_black, toner415a_cyan, toner415a_yellow, toner415a_magenta, toner415x_black, toner415x_cyan, toner415x_yellow, toner415x_magenta]
)

printer_M479.save