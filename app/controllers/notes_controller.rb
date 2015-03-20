class NotesController < ApplicationController
  def create
    @note = Note.create(note_params)
    respond_with @note, location: nil
  end

  def show
    @note = Note.find(params[:id])
    respond_with @note
  end

  private

  def note_params
    params.require(:note).permit(:status, :message, :user_id)
  end
end
