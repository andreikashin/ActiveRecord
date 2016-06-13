
  # GET /todo_items
  # GET /todo_items.json
  def index
    @todo_items = TodoItem.all
  end
  
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

