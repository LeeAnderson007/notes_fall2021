import React from "react";

const Notes = (props) => {
  const renderNotes = () => {
    return props.notes.map((note) => {
      return (
        <div style={{ border: "3px solid", margin: "40px" }}>
          <h1>{note.title}</h1>
          <p>{note.body}</p>
          <a href={`/pages/${note.id}`}>show</a>
          <a href={`/pages/${note.id}/edit`}>edit</a>
          <a href={`/pages/${note.id}`} data-method="delete">
            delete
          </a>
        </div>
      );
    });
  };
  return (
    <div>
      <h1>Notes</h1>
      <a href="/notes/new">New Note</a>
      {renderNotes()}
    </div>
  );
};

export default Notes;