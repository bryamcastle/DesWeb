class EstacionamientosController < ApplicationController
    
    def new
    end
    
    def show
        @estacionamiento = Estacionamiento.find(params[:id])
    end
    
    def create
        @estacionamiento = Estacionamiento.new(estacionamiento_params
        )
 
        @estacionamiento.save
        redirect_to @estacionamiento
    end
    
    private
        def estacionamiento_params
        params.require(:estacionamiento).permit(:title, :text)
    end
end
