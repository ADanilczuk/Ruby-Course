
class MyClass

	include GladeGUI
	
	def show()
		load_glade(_FILE_)
		@label1= "Hello World"
		set_glade_all()
		show_window()
	end
	
	def button1_clicked(*argv)
	@builder["entry1"].text = rand(2).to_s
	end
end