class NotesController < ApplicationController
#   def index
#     notes = Note.all
#     render component: "Notes", props: {notes: notes}
#   end

#   def show
#     note = Note.find(params[:id])
#     render component: "Note", props: {note: note} 
#   end

#   def new
#     note = Note.new
#     render component: "NoteNew", props: {page: page} 
#   end
# end
def index
  
  render component: "Notes", props: {notes: Note.all}
end

def show
  note = Note.find(params[:id])
  render component: 'Note', props:{note:note}

end

def new
  render component: "NewNote"
end

def edit
  note = Note.find(params[:id])
  render component: "EditNote", props: {note:note}
end

def update
  note = Note.find(params[:id])
  if note.update(note_params)
      redirect_to_notes_path
  else
      # Add option to handle invalid input later on
  end
end 

def create
binding.pry
end

def create
  note = Note.new(note_params)
  if note.save
    redirect_to_notes_path
  else
  # Add option to handle invalid input later on
  end
end

def destroy
note = Note.find(params[:id])
note.destroy
redirect_to_notes_path
end

private

def note_params
params.require(:note).permit(:title, :body)
end

end
