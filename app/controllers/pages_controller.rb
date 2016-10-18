class PagesController < ApplicationController
  def batman
  	@votosporbat = Votosbatman.all
  end

  def superman
  	@votosporsuper = Votossuperman.all
  end

  def batman_vs_superman
  end

  def guardar_batman
  	 @nombre=params[:nombre]
  	@email=params[:email]

  	unless @nombre.blank?
      Votosbatman.create({
        name: @name,
        email: @email,
      })
    end

  	redirect_to pages_batman_path
  end

  def guardar_superman
  	@nombre=params[:nombre]
  	@email=params[:email]

  	unless @nombre.blank?
      Votossuperman.create({
        name: @name,
        email: @email,
      })
    end
  	redirect_to pages_superman_path
  end

end
