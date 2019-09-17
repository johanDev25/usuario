class ExpensesController < ActionController::Base
	before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
  	palabra = "%#{params[:concept]}%"
  	categoria = "%#{params[:category_id]}%"
  	@expenses = Expense.where("concept LIKE ? AND category_id LIKE ? AND user_id=?",palabra,categoria,current_user.id)
  	
  end
end
