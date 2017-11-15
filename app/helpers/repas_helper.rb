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
end
