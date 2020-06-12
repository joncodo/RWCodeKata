class BackupsController < ApplicationController
  def index
    @backups = Backup.search(params[:search])
  end
  
  def create
    @backup = Backup.new(backup_params)

    @backup.save
    redirect_to @backup
  end

  def destroy
    @backup = Backup.find(params[:id])
    @backup.destroy
 
    redirect_to backups_path
  end
  
  def destroy_all
    Backup.delete_all

    redirect_to backups_path
  end
  
  # def search
  #   Backup.find
  # end

  def show
    @backup = Backup.find(params[:id])
  end

  private 
    # def download_backup
    
    # end

    def backup_params
      params.require(:backup).permit(:body)
    end
end
