module Api
    module V1
        class ResortsController < ApplicationController
            #rendering all resorts
            def index
                resorts = Resort.all 

                render json: ResortSerializer.new(resorts).serialized_json
            end

            #rendering individual resort
            def show
                resort = Resort.find_by(slug: params[:slug])

                render json: ResortSerializer.new(resort).serialized_json
            end

            #create a new resort
            def create
                resort = Resort.new(resort_params)

                if resort.save
                    render json: ResortSerializer.new(resort).serialized_json
                else 
                    render json: { error: resort.errors.messages }, status: 422
                end
            end

            #update a resort
            def update
                resort = Resort.find_by(slug: params[:slug])

                if resort.update(resort_params)
                    render json: ResortSerializer.new(resort).serialized_json
                else 
                    render json: { error: resort.errors.messages }, status: 422
                end
            end


            #strong params
            def resort_params
                params.require(:resort).permit(:name, :image_url)
            end
        end
    end
end