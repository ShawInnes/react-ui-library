import React, {forwardRef} from 'react';
import './Button.scss';

export interface ButtonProps {
  label: string;
  onClick?: () => void;
}

const Button: React.FC<ButtonProps> = (props: ButtonProps) => {
  return <button onClick={props.onClick}>{props.label}</button>;
};

export default Button;

