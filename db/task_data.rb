def get_task_data
  task_data = 
  {"monday"=> [{ :title=> "Do the dishes", :description=> "Wash the plates and silverware", :priority_level=> 2, :completion_time=> '13:00:00', :completed=> false },
               { :title=> "Walk the dogs", :description=> "Make sure they do their business, and clean up after them!", :priority_level=> 3, :completion_time=> '17:00:00', :completed=> false }
              ]
  }
  return task_data
end