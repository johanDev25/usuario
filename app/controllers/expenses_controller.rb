class ExpensesController < ApplicationController
	def index
		palabra = "%#{params[:concept]}%"
		categoria = "%#{params[:category_id]}%"
		@expenses = Expense.where("concept LIKE ? AND category_id LIKE ?",palabra,categoria)
	end
end
