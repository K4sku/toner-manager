# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# seed Toner Models
toner415a_black = TonerModel.black.new(make: 'HP', model: '415A', symbol: 'W2030A')
toner415a_cyan = TonerModel.cyan.new(make: 'HP', model: '415A', symbol: 'W2031A')
toner415a_yellow = TonerModel.yellow.new(make: 'HP', model: '415A', symbol: 'W2032A')
toner415a_magenta = TonerModel.magenta.new(make: 'HP', model: '415A', symbol: 'W2033A')
toner415a_black.save
toner415a_cyan.save
toner415a_yellow.save
toner415a_magenta.save

toner415x_black = TonerModel.black.new(make: 'HP', model: '415x', symbol: 'W2030x')
toner415x_cyan = TonerModel.cyan.new(make: 'HP', model: '415x', symbol: 'W2031x')
toner415x_yellow = TonerModel.yellow.new(make: 'HP', model: '415x', symbol: 'W2032x')
toner415x_magenta = TonerModel.magenta.new(make: 'HP', model: '415x', symbol: 'W2033x')
toner415x_black.save
toner415x_cyan.save
toner415x_yellow.save
toner415x_magenta.save

# Seed Printer Model
printer_model_m479 = PrinterModel.new(make: 'HP', model: 'LaserJet Pro MFP M479', is_color: true,
                                      has_replaceable_fuser: false, has_replaceable_transfer_belt: false,
                                      toner_models: [
                                        toner415a_black, toner415a_cyan, toner415a_yellow, toner415a_magenta,
                                        toner415x_black, toner415x_cyan, toner415x_yellow, toner415x_magenta
                                      ])
printer_model_m479.save

# Seed Printer
printer_m479_l100 = Printer.new(
  printer_model: printer_model_m479,
  name: 'Printer_L100_M479dn_color',
  asset_id: '000/00/0001/ZK',
  purchase_date: Date.current,
  purchase_net_price: 3250.50,
  location: 'L100',
  ip_reservation: '192.168.50.100',
  primary_user: 'shared',
  mac_address: '60128BD27C31'
)
printer_m479_l100.save

# Seed Toners
toner415x_black1 = Toner.new(
  purchase_net_price: '420',
  is_used: false,
  is_spent: true,
  level: 0,
  toner_model: toner415x_black,
  printer: printerM479L100
)
toner415x_black1.save

toner415x_black2 = Toner.new(
  purchase_net_price: '520',
  is_used: true,
  is_spent: false,
  level: 90,
  toner_model: toner415x_black,
  printer: printerM479L100
)
toner415x_black2.save

toner415a_cyan1 = Toner.new(
  purchase_net_price: '310',
  is_used: true,
  is_spent: false,
  level: 30,
  toner_model: toner415a_cyan,
  printer: printerM479L100
)
toner415a_cyan1.save

toner415a_yellow1 = Toner.new(
  purchase_net_price: '310',
  is_used: true,
  is_spent: false,
  level: 40,
  toner_model: toner415a_yellow,
  printer: printerM479L100
)
toner415a_yellow1.save

toner415a_magenta1 = Toner.new(
  purchase_net_price: '310',
  is_used: true,
  level: 25,
  toner_model: toner415a_magenta,
  printer: printerM479L100
)
toner415a_magenta1.save
