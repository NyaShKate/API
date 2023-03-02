
class Facade
  # @param [Subsystem1] subsystem1
  # @param [Subsystem2] subsystem2
  def initialize(subsystem1, subsystem2)
    @subsystem1 = subsystem1 || Subsystem1.new
    @subsystem2 = subsystem2 || Subsystem2.new
  end

  # @return [String]
  def operation
    results = []
    results.append('Facade initializes subsystems:')
    results.append(@subsystem1.operation1)
    results.append(@subsystem2.operation1)
    results.append('Facade orders subsystems to perform the action:')
    results.append(@subsystem1.operation_n)
    results.append(@subsystem2.operation_z)
    results.join("\n")
  end
end

class Subsystem1
  # @return [String]
  def operation1
    'Subsystem1: Ready!'
  end

  # ...

  # @return [String]
  def operation_n
    'Subsystem1: Go!'
  end
end


class Subsystem2
  # @return [String]
  def operation1
    'Subsystem2: Get ready!'
  end

  # ...

  # @return [String]
  def operation_z
    'Subsystem2: Fire!'
  end
end

# @param [Facade] facade
def client_code(facade)
  print facade.operation
end

subsystem1 = Subsystem1.new
subsystem2 = Subsystem2.new
facade = Facade.new(subsystem1, subsystem2)
client_code(facade)