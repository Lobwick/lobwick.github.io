class gallery < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

  def initialize(tagName, markup, tokens)
    super
    
    if $2.nil?  or $2.nil?  then
  		raise "Please use like this {% gallery [folder] [image1,image2] %} "
 	else
		@folder = $1
    	@pictures = $2.split(",")
	end
  end

  def render(context)

  	"<div class=\"gallery-box\">"
  		"<div class=\"gallery\">"
		@pictures.each { |picture|
			"<img src=\"#{@folder}#{picture}\" >"
		}
  		"</div>"
	"</div>"
  end

  Liquid::Template.register_tag "gallery", self
end