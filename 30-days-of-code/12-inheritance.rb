class Student < Person
    #   Class Constructor
    #
    #   Parameters:
    #   firstName - A string denoting the Person's first name.
    #   lastName - A string denoting the Person's last name.
    #   id - An integer denoting the Person's ID number.
    #   scores - An array of integers denoting the Person's test scores.
    #
    # Write your constructor here
  def initialize(firstName, lastName, id, scores)
    @firstName = firstName
    @lastName = lastName
    @id = id
    @scores = scores
  end

    #   Function Name: calculate
    #   Return: A character denoting the grade.
    #
    # Write your function here
  def calculate
    average = @scores.sum / @scores.size

    case average
      when 90..100
        return "O"
      when 80...90
        return "E"
      when 70...80
        return "A"
      when 55...70
        return "P"
      when 40...55
        return "D"
      when 0...40
        return "T"
      else return "Error"
    end
  end
end
