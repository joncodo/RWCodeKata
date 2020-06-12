require 'rest-client'

class BackupsController < ApplicationController
  def index
    @backups = Backup.search(params[:search])
  end
  
  def create
    @backup = Backup.new(body: download_backup)

    @backup.save
    redirect_to backups_path
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
    def download_backup
      backup_response = RestClient.get 'https://api.pokemontcg.io/v1/cards?setCode=det1'
      puts "JON: >>> " + backup_response
      JSON.parse(backup_response)
    end

    # def backup_params
    #   params.require(:backup).permit(:body)
    # end
end
