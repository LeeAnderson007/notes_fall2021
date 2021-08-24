import React from "react";

const EditNote = (props) => {
  return (
    <div className="container">
      <h1>Form</h1>
      <a href="/">back</a>
      <form action={`/notes/${props.note.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>title</p>
        <input defaultValue={props.note.title} name="note[title]" />
        <p>body</p>
        <textarea defaultValue={props.note.body} name="note[body]" />
        <button type="submit">update</button>
      </form>
    </div>
  );
};

export default EditNote;