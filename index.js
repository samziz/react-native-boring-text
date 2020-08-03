import PropTypes from "prop-types";
import React from "react";
import { requireNativeComponent } from "react-native";

const BoringText = requireNativeComponent("BoringText");

export default class extends React.Component {
  static propTypes = {
    fontSize: PropTypes.number,
    text: PropTypes.string,
  };

  render() {
    return <BoringText {...this.props} />;
  }
}
