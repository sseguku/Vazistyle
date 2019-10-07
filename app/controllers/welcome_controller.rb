class WelcomeController < ApplicationController
    def index
        render plain: "VAZISTYLE API V1"
        #render template: 'api/v1/products'
    end
end
