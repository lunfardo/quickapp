import React from "react";
import ReactDOM from "react-dom";

const Hello = function(name) {
  return (
    <div>  {React.version}
</div>
  );
};

const view = Hello("Will");

const element = document.getElementById("index");
ReactDOM.render(view, element);