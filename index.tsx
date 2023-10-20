import React from 'react';
import { requireNativeComponent } from 'react-native';

const RNCCheckBox = requireNativeComponent('RNCCheckBox');
const RNCRadioButton = requireNativeComponent('RNCRadioButton');

export class CheckBox extends React.Component {
	render() {
		return <RNCCheckBox {...this.props} />;
	}
}

export class RadioButton extends React.Component {
	render() {
		return <RNCRadioButton {...this.props} />;
	}
}

module.exports = { CheckBox, RadioButton };
