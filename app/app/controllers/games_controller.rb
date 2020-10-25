class GamesController < ApplicationController
  def show
    @game = Game.find_by(title_url: params[:id])

    head 404 if @game.blank?
  end
end