import React from "react";

// A react component is just a function that return JSX - (html embed in js)
const newUsers = () => {
  return (
    <div>
      <h1>Join Us As A New User</h1>
      <form action="/users" method="post">
        <p>Name</p>

        <input name="user[full_name]" />
        <p>Age</p>

        <input name="user[age]" />
        <p>Gender</p>

        <input name="user[gender]" />
        <button type="submit">Join Now</button>
      </form>
      <a href = {'/'}>All Users</a>
    </div>
  );
};
export default newUsers;