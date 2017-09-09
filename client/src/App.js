import React, { Component } from 'react';
import TaskList from './components/TaskList';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import './App.css';

class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <TaskList/>
        </div>
      </Router>
    );
  }
}

export default App;
