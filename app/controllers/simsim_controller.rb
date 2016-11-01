class SimsimController < ApplicationController
  def index
    @memory = List.all
  end

  def check
    inputask = params[:inputask]
    if Memory.where(ask: inputask).blank?
      redirect_to "/simsim/learn"
    else
      list_new = List.new
      list_new.ask = params[:inputask]
      list_new.answer = Memory.find_by(ask: inputask).answer
      list_new.save

      redirect_to "/simsim/index"
    end
  end

  def teach
    memory_new = Memory.new
    memory_new.ask = params[:ask]
    memory_new.answer = params[:answer]
    memory_new.save

    redirect_to "/simsim/index"
  end
end
