import React from "react";

const oneUser = (props) =>{

  return (
    <div>
      <h1>Name: {props.user.full_name}</h1>
      <p>Age: {props.user.age}</p>
      <p>Gender: {props.user.gender}</p>
      <p>User ID: {props.user.id}</p>
      <p><a href = {'/'}>All Users</a></p>
      <p><a href = {`/users/${props.user.id}/edit`}>Edit This User</a></p>
      <p><a href = {`/users/${props.user.id}`} data-method = "delete">Delete this user</a></p>
    </div>
  );
};

export default oneUser; 