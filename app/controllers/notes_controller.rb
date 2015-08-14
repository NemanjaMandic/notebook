class NotesController < ApplicationController
    
    before_action :find_note, only: [:show, :edit, :update, :destroy]
    def index
        @sise = Note.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @kurac = Note.new
       
    end
    
    def create
         @kurac = Note.new(note_params)
         
         if @kurac.save
             redirect_to @kurac
         else
             render 'new'
         end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def find_note
        @kurac = Note.find(params[:id])
    end
    
    def note_params
        params.require(:note).permit(:title, :content)
    end
end
