import React from "react";
const Note = (props) => {
  return (
    <div>
      <h1>{props.note.title}</h1>
      <p>{props.note.body}</p>
      <a href={`/notes/${props.note.id}/edit`}>edit</a>
      <a href={`/`}>back</a>
    </div>
  );
};

export default Note;

