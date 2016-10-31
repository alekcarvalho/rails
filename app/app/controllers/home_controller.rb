class HomeController < ApplicationController
  def localizacao
    @motorista = Motoristum.all
  end
end
