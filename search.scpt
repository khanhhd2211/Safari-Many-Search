on run {input, parameters}
	set inputText to input as text
	set inputText to do shell script "echo \"" & inputText & "\" | xargs"
	set inputText to replace_chars(inputText, space, "+")
	set inputText to replace_chars(inputText, ".", "")
	tell application "Safari"
		activate
		tell front window
			open location "https://dictionary.cambridge.org/dictionary/english/" & inputText
			open location "https://www.oxfordlearnersdictionaries.com/definition/english/" & inputText
			open location "https://duckduckgo.com/?q=" & inputText & "&t=osx&iax=images&ia=images#"
			open location "https://vi.wiktionary.org/wiki/" & inputText
			open location "https://www.wordhippo.com/what-is/another-word-for/" & inputText & ".html"
		end tell
	end tell
end run

on replace_chars(this_text, search_string, replacement_string)
	set AppleScript's text item delimiters to the search_string
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to the replacement_string
	set this_text to the item_list as string
	set AppleScript's text item delimiters to ""
	return this_text
end replace_chars
