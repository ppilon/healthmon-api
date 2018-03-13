# frozen_string_literal: true

class HealthSnapshotsController < ProtectedController
  before_action :set_health_snapshot, only: [:show]

  def create
    @health_snapshot = current_user.health_snapshots.build(health_snapshot_params)
    if @health_snapshot.save!
      render json: @health_snapshot, status: :created
    else
      render json: @health_snapshot.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @health_snapshot
  end

  def index
    @health_snapshots = current_user.health_snapshots
    render json: @health_snapshots
  end

  private

  def set_health_snapshot
    @health_snapshot = current_user.health_snapshots.find(params[:id])
  end

  def health_snapshots_params
    params.require(:health_snapshots).permit(
      :value, :snapshot_type, :source_name, :snapshot_type, :start_date,
      :end_date, :snapshot_creation_date, :unit
    )
  end
end
