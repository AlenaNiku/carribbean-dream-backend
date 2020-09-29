module Api
    module V1
        class ResortsController < ApplicationController
            #rendering all resorts
            # GET /api/v1/resorts
            def index
                resorts = Resort.all 

                render json: ResortSerializer.new(resorts, options).serialized_json
            end

            # GET /api/v1/resorts/:slug
            #rendering individual resort
            def show
                resort = Resort.find_by(slug: params[:slug])

                render json: ResortSerializer.new(resort, options).serialized_json
            end

            # POST /api/v1/resorts
            #create a new resort
            def create
                resort = Resort.new(resort_params)

                if resort.save
                    render json: ResortSerializer.new(resort).serialized_json
                else 
                    render json: { error: resort.errors.messages }, status: 422
                end
            end

            # PATCH /api/v1/airlines/:slug
            #update a resort
            def update
                resort = Resort.find_by(slug: params[:slug])

                if resort.update(resort_params)
                    render json: ResortSerializer.new(resort, options).serialized_json
                else 
                    render json: { error: resort.errors.messages }, status: 422
                end
            end

            # DELETE /api/v1/resorts/:slug
            #destroy a resort
            def destroy
                resort = Resort.find_by(slug: params[:slug])

                if resort.destroy
                    head :no_content
                else 
                    render json: { error: resort.errors.messages }, status: 422
                end
            end

            #private methods
            private 
            
            def resort_params
                params.require(:resort).permit(:name, :image_url)
            end

            # Used For compound documents with fast_jsonapi
            def options
                @options ||= { include: %i[reviews] } 
            end
        end
    end
end