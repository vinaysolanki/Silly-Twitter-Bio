class HomeController < ApplicationController
  def index
    random_bio
  end

  def show
    @role1 = params[:role1]
    @role2 = params[:role2]
    @desc1 = params[:desc1]
    @desc2 = params[:desc2]
    @title1 = params[:title1]
    @phrase1 = params[:phrase1]

    @perm = Array.new
    @title = Title.all
    @desc = Desc.all
    @role = Role.all
    @phrase = Phrase.all

    @perm = @role[Integer(@role1)].value + ", " + @role[Integer(@role2)].value + ", " + @desc[Integer(@desc1)].value + ", " + @desc[Integer(@desc2)].value + ", " + @title[Integer(@title1)].value + ". " + @phrase[Integer(@phrase1)].value
    #@perm << @role[@role1].value + ", " + @role[@role2].value + ", " + @desc[@desc1].value + ", " + @desc[@desc2].value + ", " + @title[@title1].value + ". " + @phrase[@phrase1].value
    #@perm1 = @perm[0]
  end

  private

  def random_bio

    @bio = Array.new

    @title = Title.all
    @desc = Desc.all
    @role = Role.all
    @phrase = Phrase.all

    @role1 = rand(@role.length)
    @role2 = rand(@role.length)
    @desc1 = rand(@desc.length)
    @desc2 = rand(@desc.length)
    @title1 = rand(@title.length)
    @phrase1 = rand(@phrase.length)

    #@bio << @role[rand(@role.length)].value
    @bio << @role[@role1].value + ", " + @role[@role2].value + ", " + @desc[@desc1].value + ", " + @desc[@desc2].value + ", " + @title[@title1].value + ". " + @phrase[@phrase1].value
    @count = @bio[0]

    if @count.length < 140
      @final = @bio[0]
      #Bios.create(:value => @final)
      #@bio_count = Bios.all
      #@bio_id = @bio_count.count + 1
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
