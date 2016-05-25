class Legislator < OpenStruct
  def self.find_by(params)
    SunlightService.new.legislators(params).map do |raw_legislator|
      Legislator.new(raw_legislator)
    end
  end
end
