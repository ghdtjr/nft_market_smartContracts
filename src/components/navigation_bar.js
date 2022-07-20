import React  from 'react';
import { Route, Link } from 'react-router-dom';

function NavigationBar() {
  return (
    <div>
        <Link to="/">logo</Link>
        <input>
        </input>
        <Link to="/">Explore</Link>
        <Link to="/create">Create</Link>
        <Link to="/mypage">MyPage</Link>
        <hr></hr>
    </div>
  )

}

export default NavigationBar;
