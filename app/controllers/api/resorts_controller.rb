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
        end
    end
end