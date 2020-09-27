module Api
    module V1
        class ResortsController < ApplicationController
            def index
                resorts = Resort.all 

                render json: ResortSerializer.new(resorts).serialized_json
            end
        end
    end
end