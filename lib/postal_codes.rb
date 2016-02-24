require "postal_codes/version"
require 'yaml'

module PostalCodes
  def self.data
    @data ||= self.compute_data
  end

  def self.compute_data
    result = Hash.new
    list = Dir.entries(File.expand_path(File.dirname(__FILE__))+"/data").select {|f| !File.directory? f}
    list.each do |country|
      result[country.split(".")[0]] = YAML.load_file(File.expand_path(File.dirname(__FILE__))+'/data/'+country)
    end
    result
  end

  def self.find_all(postal_code)
    start = Time.now
    list = self.data
    list.each do |country,data|
      postcodes = []
      result = Hash.new
      data['states'].keys.each do |state|
        if !data['states'][state][postal_code].nil?
          result['country'] = data['country']
          result['state'] = state
          result['locality'] = data['states'][state][postal_code]
          break
        end
      end
      return result
    end
  end
end

