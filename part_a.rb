class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

def can_talk()
  return "I can talk!" if (@name == "Anna")
end

def fave_language(lang)
  return "I love #{lang}" if (@name == "Anna")
end




end
