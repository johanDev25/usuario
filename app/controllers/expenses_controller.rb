class ExpensesController < ActionController::Base
	before_action :authenticate_user!
  def index
  	palabra = "%#{params[:concept]}%"
  	categoria = "%#{params[:category_id]}%"
  	@expenses = Expense.where("concept LIKE ? AND category_id LIKE ?",palabra,categoria)
  	if params[:concept].present?
		@expenses = @expenses.where("concept LIKE ?", "%#{params[:concept]}%")
	end
	if params[:category_id].present?
    	@expenses = @expenses.where("category_id=?", params[:category_id])
    end
  end
end
