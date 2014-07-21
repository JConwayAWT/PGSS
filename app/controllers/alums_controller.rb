class AlumsController < ApplicationController
  # before_action :set_alum, only: [:show, :edit, :update, :destroy]

  # GET /alums
  # GET /alums.json
  def index
    @alums = Alum.all
  end

  def create_alumni
    f = File.open("app/controllers/alumni.csv")
    f.readlines.each do |line|
      begin
        data = line.split(",")
        a = Alum.new
        a.pgss_year = data[0].to_i
        a.first_name = data[1].gsub('"','')
        a.last_name = data[2].gsub('"','')
        a.current_last_name = data[3].gsub('"','')
        a.city = data[4]
        a.state = data[5]
        a.high_school = data[6].gsub('"','')
        a.iu = data[7].to_i
        a.hometown = data[8].chomp
        a.save!
      rescue
        debugger
        puts 'db'
      end
    end
    render text: "ok"
  end

  # # GET /alums/1
  # # GET /alums/1.json
  # def show
  # end

  # # GET /alums/new
  # def new
  #   @alum = Alum.new
  # end

  # # GET /alums/1/edit
  # def edit
  # end

  # # POST /alums
  # # POST /alums.json
  # def create
  #   @alum = Alum.new(alum_params)

  #   respond_to do |format|
  #     if @alum.save
  #       format.html { redirect_to @alum, notice: 'Alum was successfully created.' }
  #       format.json { render :show, status: :created, location: @alum }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @alum.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /alums/1
  # # PATCH/PUT /alums/1.json
  # def update
  #   respond_to do |format|
  #     if @alum.update(alum_params)
  #       format.html { redirect_to @alum, notice: 'Alum was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @alum }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @alum.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /alums/1
  # # DELETE /alums/1.json
  # def destroy
  #   @alum.destroy
  #   respond_to do |format|
  #     format.html { redirect_to alums_url, notice: 'Alum was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_alum
  #     @alum = Alum.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def alum_params
  #     params.require(:alum).permit(:first_name, :last_name, :current_last_name, :high_school, :pgss_year, :city, :email, :iu)
  #   end
end
