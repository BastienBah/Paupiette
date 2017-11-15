module RepasHelper
  def select_all_city
    @array = []
    @users.each do |user|
      @array << user.ville
    end
    @array.each do |array|
      if array == ""
        array.delete
      end
    end
    @array2 = @array.uniq
    return @array2
  end

  def get_selected_city
    @re = /\=(.+)/
    @str = request.fullpath
    @result = nil
    @str.match(@re) do |match|
      @result = match[1]
    end
      if @result == nil
        return current_user.ville
      end
    return @result
  end

  def available_places(repa)
    @allowed = repa.places
    @taken = repa.participations.count

    @result = (@allowed.to_i - @taken.to_i)
    return @result
  end
end
