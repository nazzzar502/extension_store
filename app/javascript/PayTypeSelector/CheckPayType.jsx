import React from "react";
import PropTypes from "prop-types";

const CheckPayType = (props) => {
  return (
    <div className="field columns">
      <div className="field column">
        <label className="label" htmlFor="order_routing_number">Routing #</label>
        <div className="control">
          <input
            type="password"
            className="input"
            name="order[routing_number]"
            id="order_routing_number"
          />
        </div>
      </div>
      <div className="field column">
        <label className="label" htmlFor="order_account_number">Account #</label>
        <div className="control">
          <input
            type="text"
            className="input"
            name="order[account_number]"
            id="order_account_number"
          />
        </div>
      </div>
    </div>
  );
};

// CheckPayType.propTypes = {}

export default CheckPayType;
