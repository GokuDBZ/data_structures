class Node
    attr_accessor :value, :right, :left, :parent

    def inititialize(val, parent=nil)
        @value = val
        @parent = parent
        @right = nil
        @left  = nil
    end

    def insert(val)
        if val < value && right.nil?
            if right.nil?
                self.right = Node.new(val,self)
            else
                right.insert(val)
            end
        elsif  val > value && left.nil?
            if left.nil?
                self.left = Node.new(val)
            else
                self.left.insert(val)
            end    
        end
    end

    def search(value)
        if value == search_val
            self
          else
            if search_val > value && right
              right.search(search_val)
            elsif search_val < value && left
              left.search(search_val)
            end
          end
    end

end