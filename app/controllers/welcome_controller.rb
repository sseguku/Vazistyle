class WelcomeController < ApplicationController
    def index
        render js: "VAZISTYLE API V1"
        #render template: 'api/v1/products'
    end
end
