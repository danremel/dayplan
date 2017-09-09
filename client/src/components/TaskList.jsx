import React, { Component } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';

import Task from './Task';

class TaskList extends Component {
  constructor(){
    super();
    this.state = {
      error: '',
      tasks: []
    }
  }

  componentWillMount(){
    this._fetchTasks();
  }

  _fetchTasks = async () => {
    try {
      const response = await axios.get('/api/tasks');
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
    if (this.state.error){
      return <div>{this.state.error}</div>
    }
    return (
      <div>
        <h1>All Tasks</h1>
        {this.state.tasks.map((task) => (
          <div>
            <Link to={`/task/${task.id}`}>{task.title}</Link>
          </div>
        ))}
        <Task/>
        Hello from TaskList        
      </div>
    );
  }
}

export default TaskList;