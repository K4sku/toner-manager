class PartKitsController < ApplicationController
  before_action :set_part_kit, only: %i[ show edit update destroy ]

  # GET /part_kits or /part_kits.json
  def index
    @part_kits = PartKit.all
  end

  # GET /part_kits/1 or /part_kits/1.json
  def show
  end

  # GET /part_kits/new
  def new
    @part_kit = PartKit.new
  end

  # GET /part_kits/1/edit
  def edit
  end

  # POST /part_kits or /part_kits.json
  def create
    @part_kit = PartKit.new(part_kit_params)

    respond_to do |format|
      if @part_kit.save
        format.html { redirect_to part_kit_url(@part_kit), notice: "Part kit was successfully created." }
        format.json { render :show, status: :created, location: @part_kit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @part_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_kits/1 or /part_kits/1.json
  def update
    respond_to do |format|
      if @part_kit.update(part_kit_params)
        format.html { redirect_to part_kit_url(@part_kit), notice: "Part kit was successfully updated." }
        format.json { render :show, status: :ok, location: @part_kit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @part_kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_kits/1 or /part_kits/1.json
  def destroy
    @part_kit.destroy

    respond_to do |format|
      format.html { redirect_to part_kits_url, notice: "Part kit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_kit
      @part_kit = PartKit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part_kit_params
      params.require(:part_kit).permit(:type, :oem_name, :purchase_net_price)
    end
end
