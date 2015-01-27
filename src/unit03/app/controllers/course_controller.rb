class CourseController < ApplicationController
  def eval
  	@body_content = "Student grades will be calculated based on the following:
  		<br>
  		<p>
  			Participation - 5%<br>
  			Homework - 45%<br>
  			Exams - 50%<br>
  		</p>".html_safe

  end

  def announce
  	@time = Time.now()
  end

  def scores
  	redirect_to action: "announce", :flash => { :error => "Insufficient rights!" }
  end

end
