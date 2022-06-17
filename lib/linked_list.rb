require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    current = head

    while tail != head
      current.prev_node = head.next_node
      current = current.prev_node
    end 
  end


end
