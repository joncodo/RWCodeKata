require 'rest-client'
require 'json'

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

  def show
    backup = Backup.find(params[:id])
    @cards = backup.body['cards']
  end

  private

  def download_backup
    backup_response = RestClient.get 'https://api.pokemontcg.io/v1/cards?setCode=det1'
    JSON.parse(backup_response)
  end
end
