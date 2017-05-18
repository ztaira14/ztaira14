import React, { Component } from 'react';
import MenuBarItem from './MenuBarItem';
import './MenuBar.css';

class MenuBar extends Component {
  constructor(props) {
    super(props);
    this.ReturnMenuBarItem = this.ReturnMenuBarItem.bind(this);
  }

  ReturnMenuBarItem(item) {
    return <MenuBarItem key={item} setstate={this.props.setstate} text={item} />;
  }

  render() {
    return (
      <ul className="MenuBar">{this.props.menuitems.map(this.ReturnMenuBarItem)}</ul>
    );
  }
}

export default MenuBar;