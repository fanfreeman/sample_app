class ListElement
	attr_accessor :data, :next

	def initialize(data = "")
		@data = data
	end

	def printList
		list = self
		while list != nil
			print "#{list.data}\n"
			list = list.next
		end
	end

	def insertInFront(data)
		l = self.class.new(data)
		l.next = self
		return l
	end
end