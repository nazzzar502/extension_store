import React from "react";
import PropTypes from "prop-types";

const PurchaseOrder = (props) => {
  return (
    <div className="columns">
      <div className="field column">
        <label htmlFor="order_po_number" className="label">
          PO #
        </label>
        <div className="control">
          <input
            className="input"
            type="password"
            name="order[po_number]"
            id="order_po_number"
          />
        </div>
      </div>
    </div>
  );
};

// PurchaseOrder.propTypes = {}

export default PurchaseOrder;
