class BibliosController < ApplicationController
  def index
    @biblios = Biblio.all
  end

  def new
  end

  def show
  end
end
