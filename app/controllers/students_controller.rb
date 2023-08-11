class StudentsController < ApplicationController
    def index
        render json: students, only: [:id, :first_name, :last_name]
    end

    def grades
        students = Student.all.order(grade: :desc)
    end

    def highest_grade
       highest_student = Student.order(grade: :desc).first  # Assuming 'grade' is the attribute representing student grades
        
       render json: highest_student, only: [:id, :first_name, :last_name, :grade]
      end   

end
