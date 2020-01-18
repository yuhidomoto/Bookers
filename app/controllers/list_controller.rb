class ListController < ApplicationController
  def new
  	@book = Book.new
  end
   def create
   	book =  Book.new(book_params)

   	book.save
   	redirect_to '/top'

   end
   private

   def book_params
   	params.require(:list).permit(:title, :body)
    end
 
end
