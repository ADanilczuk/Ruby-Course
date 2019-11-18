require 'tk'
class Okienko
	def run
		@win = TkRoot.new { title ’Kalkulator’ }
		@entry = TkEntry.new(@win) { pack }
		@butt = TkButton.new(@win) { text ’Oblicz’; pack }
		@butt.command { self.oblicz }
		@label = TkLabel.new(@win) { text ’0’; pack }
		TkButton.new(@win) { text ’KONIEC’;
		command { exit }; pack }
	
	Tk.mainloop
	end
	
	def oblicz
		@label.text = eval(@entry.value)
		@entry.value = ”
	end

end
