import React, { Component } from 'react'

class SearchBar extends Component {
    constructor(props) {
      super(props);
      this.state = {
        search: null
      }
    }

    render() {
    return (
      <div>
          <input type="search"
                 onChange={() => this.setState({search: e.target.value})}
          />
      </div>
    )
  }
}

export default SearchBar