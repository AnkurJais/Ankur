namespace :delete do
  desc "a new task to be executed"
  task :last_answer => :environment do
    puts "you are going to delete last question."
    puts "Press Y"
	    if Answer.last.delete
	      puts "Last answer deleted."
	    else
	    	puts "error occured while deletion."		
	    end 
  end
  
  task :last_quesion => :environment do
    puts "you are going to delete last question"
    	if Question.last.delete
	      puts "Last question deleted."
	    else
	    	puts "error occured while deletion."		
	    end	
  end
  
  task :all_quesion => :environment do
    puts "you are going to delete all question"
    	if Question.all.delete
	      puts "All question deleted."
	    else
	    	puts "error occured while deletion."		
	    end	  
  end

  task :all_answer => :environment do
    puts "you are going to delete all answer"
    	if Answer.all.delete
	      puts "All answer deleted."
	    else
	    	puts "error occured while deletion."		
	    end	
  end
  # task :groom_myself do
  #   puts "Brushed teeth."
  #   puts "Showered."
  #   puts "Shaved."
  # end
 
  # task :make_coffee do
  # 	Rake::Task['my_app:groom_myself'].invoke
  #   cups = ENV["COFFEE_CUPS"] || 2
  #   puts "Made #{cups} cups of coffee. Shakes are gone."
  # end
 
  # task :walk_dog do
  #   puts "Dog walked."
  # end
 
  # task :ready_for_the_day => [:turn_off_alarm, :groom_myself, :make_coffee, :walk_dog] do
  #   puts "Ready for the day!"
  # end
end