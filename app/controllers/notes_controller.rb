class NotesController < ApplicationController
  def index
    notes = Note.all
    render component: "Notes", props: {notes: notes}
  end

  def show
    note = Note.find(params[:id])
    render component: "Note", props: {note: note} 
  end

  def new
    note = Note.new
    render component: "NoteNew", props: {page: page} 
  end
end
