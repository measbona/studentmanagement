class DepartmentsController < ApplicationController
	def index
		@departments = Department.all
	end

	def show
		@department = Department.find(params[:id])
	end

	def edit
		@department = Department.find(params[:id])
	end

	def update
		@department = Department.find(params[:id])
		if @department.update(department_params)
			flash[:notice] = "Department is updated"
			redirect_to @department
		else
			render :edit
		end
	end

	def new
		@department = Department.new
	end

	def create
		@department =Department.new(department_params)
		if @department.save
			redirect_to @department
		else
			render:new
		end
	end

	def destroy
		@department = Department.find(params[:id])
		if @department.update(is_deleted: true)
			redirect_to departments_path
		# else 
			# redirect_to department_path
		end
		
		
	end

	private

	def department_params
		params.require(:department).permit(:name)
	end
end
