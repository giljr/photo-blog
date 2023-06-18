class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
    before_action :set_papel, only: %i[ show edit update destroy ]
  
    # GET /papeis or /papeis.json
    def index
    end
          
  end
  