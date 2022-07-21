require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    og_head = self.head
    og_tail = self.tail
    og_head_next = og_head.next_node
    og_tail_prev = og_tail.prev_node

    self.tail = og_head
    self.head = og_tail

    node = tail

    until og_head_next == og_head.prev_node && og_tail_prev == og_tail.next_node
      node.prev_node = head.next_node
      node = node.prev_node
    end
    
  end


end
