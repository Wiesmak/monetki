class Api::MonetyController < ApplicationController

    # GET /monety
    def index
        @monety = Moneta.all
        render json: @monety
    end

    # GET /monety/:id
    def show
        @moneta = Moneta.find(params[:id])
        render json: @moneta
    end

    # POST /monety
    def create
        @moneta = Moneta.new(moneta_params)
        if @moneta.save
            render json: @moneta
        else
            render error: { error: 'Nie udało się dodać monety' }, status: 400
        end
    end

    # PUT /monety/
    def update
        @moneta = Moneta.find(params[:id])
        if @moneta
            Moneta.update(moneta_params)
            render json: { message: 'Zmodyfikowano monetę' }, status 200
        else
            render error: { message: 'Nie udało zię zmodyfikować monety' }, status 400
        end

        # DELETE /monety/:id
        def destroy
            @moneta = Moneta.find(params[:id])
            if @moneta
                @moneta.destroy
                render json: { message: 'Usunięto monetę' }, status 200
            else
                render json: { message: 'Nie udało się usunąć monety' }, status 400
            end
        end

        private

        def moneta_params
            params.require(:moneta).permit(:flag, :nominal, :nr_kat, :stop)
        end

end
