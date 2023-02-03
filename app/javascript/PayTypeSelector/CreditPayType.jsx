import React from "react";
import PropTypes from "prop-types";

const CreditPayType = (props) => {
  return (
    <div className="field columns">
      <div className="field column">
        <label htmlFor="order_credit_card_number" className="label">
          CC #
        </label>
        <div className="control">
          <input
            type="password"
            className="input"
            name="order[credit_card_number]"
            id="order_credit_card_number"
          />
        </div>
      </div>
      <div className="field column">
        <label htmlFor="order_expiration_date" className="label">
          Expiry
        </label>
        <div className="control">
          <input
            type="text"
            className="input"
            name="order[expiration_date]"
            id="order_expiration_date"
            size="9"
            placeholder="e.g. 03/19"
          />
        </div>
      </div>
    </div>
  );
};

// CreditPayType.propTypes = {}

export default CreditPayType;
