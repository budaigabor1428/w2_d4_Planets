class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def has_planets()
    return @planets.count
  end

  def planet_names()
    name_array = []
    @planets.each {|planet| name_array << planet.name}
    return name_array
  end

  def get_planet_by_name(search)
    return @planets.find { |planet| planet.name == search}
  end

  def get_largest_planet
    return @planets.max_by { |planet| planet.diameter}
  end

  def get_smallest_planet
    return @planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons
    return @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(search)
    return @planets.find_all { |planet| planet.number_of_moons > search }.map { |planets| planets.name}
  end

  def get_number_of_planets_closer_than(search)
    return @planets.find_all { |planet| planet.distance_from_sun < search }.map { |planets| planets.name}.count
  end

  def get_total_number_of_moons()
    return @planets.reduce(0) { |total, planets| total + planets.number_of_moons}
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun()

  sorted = @planets.sort { |x,y| x.distance_from_sun <=> y.distance_from_sun}


  return sorted.map { |planet| planet.name}

  end

  def get_planet_names_sorted_by_size_decreasing()

  sorted = @planets.sort { |x,y| x.distance_from_sun <=> y.distance_from_sun}
  sorted.map! { |planet| planet.name}
  return sorted



  end

end
