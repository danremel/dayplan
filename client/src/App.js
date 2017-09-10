import React, { Component } from 'react';
import DaysList from './components/DaysList';
import Day from './components/Day';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import './App.css';

class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <Route exact path="/" component={DaysList}/>
          <Route exact path="/day" component={Day}/>
        </div>
      </Router>
    );
  }
}

export default App;
