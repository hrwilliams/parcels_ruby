class Parcel
  define_method(:initialize) do |length, width, height, speed, weight|
    @length = length
    @width = width
    @height = height
    @speed = speed
    @weight = weight
    @volume = 0
  end
  define_method(:parcel_volume) do
  @volume = @length * @width * @height
  end

  define_method(:cost_of_shipping) do
    if self.parcel_volume <= 10
      volume_price = 10
    elsif (self.parcel_volume > 10) && (self.parcel_volume <= 25)
      volume_price = 20
    else
      volume_price = 30
    end

    if @weight <= 70
      weight_price = 5
    else
      weight_price = 20
    end

    if @speed == 1
      speed_price = 0
    elsif @speed == 2
      speed_price = 15
    end

  cost_of_shipping = volume_price + weight_price + speed_price
  end
end
