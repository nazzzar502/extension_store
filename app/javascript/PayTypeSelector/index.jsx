import React from "react";
import PropTypes from "prop-types";
import { SetStateAction } from "react";
import { useState } from "react";
import CheckPayType from "../PayTypeSelector/CheckPayType";
import NoPayType from "../PayTypeSelector/NoPayType";
import CreditPayType from "../PayTypeSelector/CreditPayType";
import PurchaseOrder from "../PayTypeSelector/PurchaseOrder";
import Select from "../packs/components/Select";

const PayTypeSelector = () => {
  const [payment_type, setPayment] = useState("");

  const optionSet = [
    {
      text: "Check",
      value: "Check",
    },
    {
      text: "Credit card",
      value: "Credit card",
    },
    {
      text: "Purchase order",
      value: "Purchase order",
    },
    {
      text: "Select a payment method",
      value: "",
    },
  ];

  const handleChange = (value) => {
    setPayment(value);
  };

  return (
    <div>
      <div>
        <Select optionsSet={optionSet} onChange={handleChange} />
      </div>

      <div>
        {payment_type === "Check" && <CheckPayType />}
        {payment_type === "Credit card" && <CreditPayType />}
        {payment_type === "Purchase order" && <PurchaseOrder />}
        {payment_type === "" && <NoPayType />}
      </div>

      <div class="control">
        <button class="button is-link is-success"> Submit </button>
      </div>
    </div>
  );
};

// PayTypeSelector.defaultProps = {

// }

// PayTypeSelector.propTypes = {

// }

export default PayTypeSelector;
