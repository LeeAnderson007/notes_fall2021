import React from "react";

const NewNote = () => {
  return (
    <div className="container">
      <h1>Form</h1>
      <form action="/notes" method="post">
        <p>title</p>
        <input name="note[title]" />
        <p>body</p>
        <textarea name="note[body]" />
        <button type="submit">add</button>
      </form>
    </div>
  );
};

export default NewNote;