class ApplysController < ApplicationController
    def index
        @applies=Apply.all
    end
    def new
        @apply=Apply.new
    end
    def create
        @apply=
    end
    def show
    end
    def edit
    end
    def update
    end
    def destroy
    end
    
end
