# frozen_string_literal: true

class HealthSnapshotsController < OpenReadController
  def create
    @health_snapshot = current_user.health_snapshots.build(health_snapshot_params)
    puts @health_snapshot
    if @health_snapshot.save!
      render json: @health_snapshot, status: :created
    else
      render json: @health_snapshot.errors, status: :unprocessable_entity
    end
  end

  private

  def health_snapshot_params
    params.require(:health_snapshot).permit(
      :value, :snapshot_type, :source_name, :snapshot_type,
      :start_date, :end_date, :snapshot_creation_date, :unit
    )
  end
end
