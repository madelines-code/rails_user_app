import React from "react";

const userEdit = (props) => {
  const { id, full_name, age, gender } = props.user;
 
  return (
    <>
      <h1>Edit User</h1>
      <form action={`/users/${id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={full_name} name="user[full_name]" />
        <p>Age </p>
        <input defaultValue={age} name="user[age]" />
        <p>Gender</p>
        <textarea defaultValue={gender} name="user[gender]" />
        <br />
        <button type="submit">update</button>
      </form>
      <a href = {'/'}>All Users</a>
    </>
  );
};
export default userEdit;