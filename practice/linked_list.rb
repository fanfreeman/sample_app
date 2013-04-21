class ListElement
	attr_accessor :data, :next

	def initialize(data = "")
		@data = data
	end

	def printList
		el = self
		while el != nil
			print "#{el.data}\n"
			el = el.next
		end
	end

	def find(element)
		el = self
		while el != nil && el != element
			el = el.next
		end
		return el
	end
end

class LinkedList
	def initialize
		@head = @tail = nil
	end

	def remove(element)
		el = @head
		if el == element
			@head = el.next
		end

		while el != nil
			if el.next != nil && el.next == element
				el.next = el.next.next
				return true
			end
			el = el.next
		end

		return false
	end

	def insertAfter(element, data)
		if element == nil
			if @head == nil
				@head = ListElement.new(data)
			else
				newEl = ListElement.new(data)
				newEl.next = @head
				@head = newEl
				return @head
			end
		else
			el = @head
			while el != nil
				if el == element
					newEl = ListElement.new(data)
					nextEl = el.next
					el.next = newEl
					newEl.next = nextEl
					return newEl
				end
			end
		end
	end

	def printList
		if @head != nil
			@head.printList
		end
	end

	def findMToLast(m)
		count = 0
		el = @head
		lagEl = nil
		while el != nil
			count = count + 1
			el = el.next
			if lagEl != nil
				lagEl = lagEl.next
			end
			if count == m
				lagEl = @head
			end
		end
		return lagEl
	end
end

class Stack
	def initialize
		@head = nil
	end

	def push(data)
		if @head == nil
			@head = ListElement.new(data)
		else
			newEl = ListElement.new(data)
			newEl.next = @head
			@head = newEl
		end
	end

	def pop
		if @head == nil
			return nil
		end

		if @head.next == nil
			data = @head.data
			@head = nil
			return data
		end

		data = @head.data
		el = @head.next
		@head.next = nil
		@head = el
		return data
	end

	def debug
		print 'debug: '
		@head.printList
	end
end

# head = ListElement.new(2)
# head = head.insertInFront(1)
# head = head.insertInFront(0)
# head.printList

l = LinkedList.new
l.insertAfter(nil, 1)
l.insertAfter(nil, 2)
l.insertAfter(nil, 3)
l.insertAfter(nil, 4)
l.printList
el = l.findMToLast(0)
el.printList