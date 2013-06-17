class Completion
  def initialize(command)
    @command = command
  end
  
  def matches
    all_matches.select do |task|
      task[0, typed.length] == typed
    end
  end
  
  def typed
    @command[/\s(.+?)$/, 1] || ''
  end
  
  def all_matches
    []
  end
end
