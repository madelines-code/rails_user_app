import React from "react";

const oneUser = (props) =>{

  return (
    <div>
      <h1>{props.user.full_name}</h1>
      <p>{props.user.age}</p>
      <p>{props.user.gender}</p>
      <a href = {'/'}>All Users</a>
    </div>
  );
};

export default oneUser; 