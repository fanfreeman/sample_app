class Node
	attr_accessor :value, :left, :right

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end

	def preorder
		print "#{@value}\n"
		if @left != nil
			@left.preorder
		end
		if @right != nil
			@right.preorder
		end
	end
end

root = Node.new(100)
n11 = root.left = Node.new(50)
n12 = root.right = Node.new(150)
n21 = n11.left = Node.new(25)
n22 = n11.right = Node.new(75)
n23 = n12.left = Node.new(125)
n24 = n12.right = Node.new(175)
n31 = n23.left = Node.new(110)

root.preorder