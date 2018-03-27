class XmlParser
  def initialize(xml_file)
    @xml_file = xml_file
  end

  def rows
    @doc = Nokogiri::XML(@xml_file)
    doc = []
    @doc.xpath("//Record").each do |node|
      obj = {}
      node.each do |key, attribute|
        obj[key] = attribute
      end
      doc << obj
    end
    doc
  end
end
