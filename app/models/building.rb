class Building
  attr_accessor :id, :name, :address, :height, :construction_date, :architect
  def initialize(input_options)
    @id = input_options['id']
    @name = input_options['name']
    @address = input_options['address']
    @height = input_options['height']
    @construction_date = input_options['construction_date']
    @architect = input_options['architect']
  end

  def self.all
    response = HTTP.get("http://localhost:3000/api/buildings")
    buildings = response.parse
    obj_buildings = []

    buildings.each do |building|
      obj_buildings << Building.new(building)
    end

    obj_buildings
  end

  def self.find_by(building_id)
    
  end
end