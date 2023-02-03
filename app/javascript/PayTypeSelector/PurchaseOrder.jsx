import React from "react";
import PropTypes from "prop-types";

const PurchaseOrder = (props) => {
  return (
    <div>
      <div className="field">
        <label htmlFor="order_po_number">PO #</label>
        <input type="password" name="order[po_number]" id="order_po_number" />
      </div>
    </div>
  );
};

// PurchaseOrder.propTypes = {}

export default PurchaseOrder;
