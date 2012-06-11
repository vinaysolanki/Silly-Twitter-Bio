class HomeController < ApplicationController
  def index
    random_bio
  end

  private

  def random_bio

    @bio = Array.new

    @title = Title.all
    @desc = Desc.all
    @role = Role.all
    @phrase = Phrase.all

    #@bio << @role[rand(@role.length)].value
    @bio << @role[rand(@role.length)].value + ", " + @role[rand(@role.length)].value + ", " + @desc[rand(@desc.length)].value + ", " + @desc[rand(@desc.length)].value + ", " + @title[rand(@title.length)].value + ". " + @phrase[rand(@phrase.length)].value
    @count = @bio[0]
    if @count.length < 140
      @final = @bio[0]
    else
      random_bio
    end

    #@bio.gsub(([]),"")
    #bio << FunnyShit[rand(fs.length)]
    #bio << FunnyShit[rand(fs.length)] # I don't grab the same one that I did before
    # some more code here to append to your bio

    # make sure bio is 140 characters or less
    # other checks
  end
end
