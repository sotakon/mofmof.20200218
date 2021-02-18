class ChintaisController < ApplicationController
  before_action :set_chintai, only: [:show, :edit, :update, :destroy ]
  def index
    @chintais = Chintai.all
  end

  def new
    @chintai = Chintai.new
    2.times { @chintai.stations.build }
  end

  def create
    @chintai = Chintai.new(chintai_params)
    if @chintai.save
      redirect_to chintais_path, notice: "物件を登録しました！"
    else
    render :new
    end
  end

  def show
    @stations = @chintai.stations
  end

  def edit
    @chintai.stations.build
  end

  def update
  if @chintai.update(chintai_params)
    redirect_to chintais_path, notice: "物件を編集しました！"
  else
    render :edit
  end
end

  def destroy
    @chintai.destroy
    redirect_to chintais_path, notice:"物件を削除しました！"
  end

  private
  def chintai_params
    params.require(:chintai).permit(:name, :rent, :adress, :age, :remark, stations_attributes:[ :route_name, :statuions_name, :time, :chintais_id, :id, :_destroy ] )
  end

  def set_chintai
  @chintai = Chintai.find(params[:id])
  end
end
