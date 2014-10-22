class UsersController < ApplicationController

def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

   def edit
    @user = User.find(params[:id])
  end


 def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end

def show_question
  @questions = Question.all
end

 def ask
 @question = Question.new
 end

def give_answer
  @question= Question.find(params[:id])


end

def savequestion

 @question = Question.new(params[:question])
respond_to do |format|
 if @question.save
   flash[:notice] = 'Question was successfully asked.'
 format.html { redirect_to (:back), notice: 'Question was successfully asked.'}
 
 end
end
end

def post_answer
 p  params
# @question = Question.find(params[:id])
@answer =Answer.new(params[:answer])
@answer.question_id = params[:id]
respond_to do |format|
if @answer.save
 format.html { redirect_to (:back), notice: 'Answer was successfully posted.'}
  #  if @answer.set_attributes(:answer,"params[:answer]")
   #     format.html { redirect_to (:back), notice: 'Answer was successfully posted.' }
    #    p @answer.answer
    #  else 
end 
end
end

def show_answer
  p params[:id]
@answers = Answer.find_all_by_question_id(params[:id])
  # @answers = Answer.where(question_id: params[:id])

end


def vote_me
  respond_to do |format|
if !$like 
$like=0
end
if($like==0)
  $like=1
  p $like
  format.html { redirect_to :back,notice: 'successfully liked.' }
else
  $like=0
  p $like
  format.html {redirect_to :back , notice: 'successfully Unliked.' }
end
end
end
end





  