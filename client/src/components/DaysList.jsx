import React, { Component } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

import Day from './Day';

class DaysList extends Component {
  constructor(){
    super();
    this.state = {
      error: '',
      days: []
    }
  }

  componentWillMount(){
    this._fetchDays();
  }

  _fetchDays = async () => {
    try {
      const response = await axios.get(`/api/days`);
      const days = response.data;
      this.setState({days});
    } catch (err) {
      this.setState({error: err.message})
    }
  }

  

  render() {
    if (this.state.error){
      return <div>{this.state.error}</div>
    }
    return (
      <div>
        <h1>All Tasks</h1>
        {this.state.days.map((day) => (
          <div>
            <Link to={`/days/${day.id}`}>{day}</Link>
          </div>
        ))}
        <Day day={this.state.days} />
        Hello from DaysList        
      </div>
    );
  }
}

export default DaysList;