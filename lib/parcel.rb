class Parcel
  define_method(:initialize) do |length, height, width, speed, weight|
    @length = length
    @height = height
    @width = width
    @speed = speed
    @weight = weight
    @package_volume

  end

  define_method(:volume) do
    @package_volume = @length * @height * @width
    #@length.*(@height.*(@width))
  end

  define_method(:cost_to_ship) do

      volume_cost = volume() * 2

        if @speed = 1
        speed_cost = 5
      elsif @speed = 2
        speed_cost = 2
      else
        speed_cost = 0
      end

      cost_weight = @weight * 2

      total_cost = cost_weight + volume_cost + speed_cost

  end

end
