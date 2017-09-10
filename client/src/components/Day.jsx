import React, { Component } from 'react';
import axios from 'axios';
class Day extends Component {
  constructor(){
    super();
    this.state = {
      day: {},
      tasks: []
    }
  }

  componentWillMount(){
    this._fetchDayAndTasks();
  }

  _fetchDayAndTasks = async () => {
    try {
      const day_id = this.props.match.params.id;
      const response = await axios.get(`/api/days/${day_id}`);
      await this.setState({tasks: response.data});
      return response.data;
    }
    catch (err) {
      console.log(err)
      await this.setState({error: err.message})
      return err.message
    }
  }
  render() {
    return (
      <div>

      </div>
    );
  }
}

export default Day;