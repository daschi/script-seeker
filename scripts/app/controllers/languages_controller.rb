class LanguagesController < ApplicationController

  def index
    @languages = Language.all
    @language = Language.new
  end

  def show
    @language = Language.find(params[:id])
    @letters = @language.letters
  end

end
