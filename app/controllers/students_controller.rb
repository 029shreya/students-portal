class StudentsController < ApplicationController
	helper_method :formatted_date
	http_basic_authenticate_with name: "rajat", password: "password12", except: [:index,:show, :destroy]
	def index
  @q = Student.ransack(params[:q])
  @students = @q.result.page(params[:page]).per(5)
end
	def new 
	@student = Student.new
	@courses = Course.all
	end
	def create
		@student = Student.new(student_params)
		if @student.save
			redirect_to students_path, notice: "students created successfully"
		else
			render :new
		end
	end
	def show
		@student = Student.find(params[:id])
		@blogs = @student.blogs
		@courses = @student.courses
	end
	def edit
		@student = Student.find(params[:id])
	end
	def update
		@student = Student.find(params[:id])
		if @student.update(student_params)
			redirect_to students_path, notice: "students updated successfully"
		else 
			render :edit
		end
	end
	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path, notice: "student deleted successfully"
	end
	private
	def student_params
		params.require(:student).permit(:name, :last_name, :age, :email, :profile_image, :contact_number,course_ids: [])
	end
	def formatted_date(date)
		date.strftime('%A, %b, %d, %Y')
	end
end
