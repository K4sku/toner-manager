class PrinterModelsController < ApplicationController
  before_action :set_printer_model, only: %i[ show edit update destroy ]

  # GET /printer_models or /printer_models.json
  def index
    @printer_models = PrinterModel.all
  end

  # GET /printer_models/1 or /printer_models/1.json
  def show
  end

  # GET /printer_models/new
  def new
    @printer_model = PrinterModel.new
  end

  # GET /printer_models/1/edit
  def edit
  end

  # POST /printer_models or /printer_models.json
  def create
    @printer_model = PrinterModel.new(printer_model_params)

    respond_to do |format|
      if @printer_model.save
        format.html { redirect_to printer_model_url(@printer_model), notice: "Printer model was successfully created." }
        format.json { render :show, status: :created, location: @printer_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @printer_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /printer_models/1 or /printer_models/1.json
  def update
    respond_to do |format|
      if @printer_model.update(printer_model_params)
        format.html { redirect_to printer_model_url(@printer_model), notice: "Printer model was successfully updated." }
        format.json { render :show, status: :ok, location: @printer_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @printer_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /printer_models/1 or /printer_models/1.json
  def destroy
    @printer_model.destroy

    respond_to do |format|
      format.html { redirect_to printer_models_url, notice: "Printer model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_printer_model
      @printer_model = PrinterModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def printer_model_params
      params.require(:printer_model).permit(:make, :model, :is_color, :toner_cyan, :toner_magenta, :toner_yellow, :toner_black, :has_replaceable_fuser, :fuser_kit, :has_replaceable_transfer_belt, :transfer_kit)
    end
end
