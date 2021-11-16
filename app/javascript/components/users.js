import React from "react";

// A react component is just a function that return JSX - (html embed in js)
const Users = (props) => {
  // we want to take this array of objects and convert it to an array of
  // jsx ideas if a method to use here
  const renderUsers = () => {
    return props.users.map((user) => {
      return (
        <div>
          <h1>{user.full_name}</h1>
          <p>{user.age}</p>
          <p>{user.gender}</p>
          <a href = {`/users/${user.id}`}>View This User's Profile</a>
        </div>
      );
    });
  };

  return <p>Users Here: {renderUsers()}</p>;
};
export default Users;