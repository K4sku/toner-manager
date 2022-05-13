# frozen_string_literal: true

class PrintersController < ApplicationController
  before_action :set_printer, only: %i[show details edit update destroy]

  # GET /printers or /printers.json
  def index
    @printers = Printer.includes(:toners).all
  end

  # GET /printers/1 or /printers/1.json
  def show
    @printer = Printer.includes(:toners).find(params[:id])
  end

  # GET /printers/1/details
  def details; end

  # GET /printers/new
  def new
    @printer = Printer.new
    @printer.primary_user = 'Shared'
    @printer_models = PrinterModel.all.order(:name)
  end

  # GET /printers/1/edit
  def edit
    @printer_models = PrinterModel.all.order(:name)
  end

  # POST /printers or /printers.json
  def create
    @printer = Printer.new(printer_params)
    @printer.primary_user ||= 'Shared'
    create_and_set_stock_toners

    respond_to do |format|
      if @printer.save
        format.html do
          redirect_to printer_url(@printer), notice: 'Printer was successfully created.'
        end
        format.json { render :show, status: :created, location: @printer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @printer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /printers/1 or /printers/1.json
  def update
    respond_to do |format|
      if @printer.update(printer_params)
        format.html do
          redirect_to printer_url(@printer), notice: 'Printer was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @printer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @printer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_printer
    @printer = Printer.includes(:toners).includes(:printer_model).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def printer_params
    params.require(:printer).permit(:name, :asset_id, :purchase_date, :purchase_net_price, :location,
                                    :ip_reservation, :primary_user, :printer_model_id)
  end

  # printers come with existing toners

  def create_and_set_stock_toners
    Toner.create(
      purchase_net_price: '0',
      is_used: true,
      is_spent: false,
      level: 100,
      toner_model: @printer.printer_model.toner_models.black.first,
      printer: @printer
    )

    return unless @printer.printer_model.is_color

    Toner.create(
      purchase_net_price: '0',
      is_used: true,
      is_spent: false,
      level: 100,
      toner_model: @printer.printer_model.toner_models.cyan.first,
      printer: @printer
    )
    Toner.create(
      purchase_net_price: '0',
      is_used: true,
      is_spent: false,
      level: 100,
      toner_model: @printer.printer_model.toner_models.yellow.first,
      printer: @printer
    )
    Toner.create(
      purchase_net_price: '0',
      is_used: true,
      is_spent: false,
      level: 100,
      toner_model: @printer.printer_model.toner_models.magenta.first,
      printer: @printer
    )
  end
end
