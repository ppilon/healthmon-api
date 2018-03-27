class Importer
  attr_accessor :parser
  def initialize(attributes)
    @parser = attributes[:parser]
    @current_user = attributes[:current_user]
  end
  def run_import
    snapshots = []
    @parser.rows.each do |record|
      snapshots << @current_user.health_snapshots.build(snapshot_type: record['type'], source_name: record['sourceName'], unit: record['unit'], value: record['value'], start_date: record['startDate'], end_date: record['endDate'])
    end
    imported_snapshots = HealthSnapshot.import snapshots, recursive: true
    snapshots.count - imported_snapshots.count
  end
end
