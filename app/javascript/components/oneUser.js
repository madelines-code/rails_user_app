import React from "react";

const oneUser = (props) =>{

  return (
    <div>
      <h1>Name: {props.user.full_name}</h1>
      <p>Age: {props.user.age}</p>
      <p>Gender: {props.user.gender}</p>
      <p>User ID: {props.user.id}</p>
      <a href = {'/'}>All Users</a>
    </div>
  );
};

export default oneUser; 