class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
    @user = User.find_by(id: @comment.user_id)
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @confirm = false
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = User.find_by(id: session[:user_id]).id
    product = Product.find_by(id: session[:product_id])
    @comment.product_id = product.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to product_url(product), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.js { render :action => "reload_comment" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comment_url(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    product = Product.find_by(id: session[:product_id])
    current_user = User.find_by(id: session[:user_id])
    @comment.ensure_if_user_original(@comment, current_user)
    @comment.destroy
    

    respond_to do |format|
      format.html { redirect_to product_url(product), notice: "Comment was removed." }
      format.json { head :no_content }
    end
  end

  def reload_comment
    respond_to do |format|
      format.js { @comment }
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:label, :body)
    end
end
