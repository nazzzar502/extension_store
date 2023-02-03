import React from "react";
import PropTypes from "prop-types";
import Options from "./Options";

const Select = ({ onChange, optionsSet }) => {
  return (
    <div>
      <select
        onChange={(e) => onChange(e.target.value)}
        id="order_pay_type"
        name="order[pay_type]"
      >
        <Options optionsSet={optionsSet} />
      </select>
    </div>
  );
};

// Select.propTypes = {};

export default Select;
