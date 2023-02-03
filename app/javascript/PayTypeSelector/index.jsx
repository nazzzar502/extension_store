
import React from 'react'
import PropTypes from 'prop-types'
import { SetStateAction } from 'react'
import { useState } from "react";
import CheckPayType from '../PayTypeSelector/CheckPayType'
import NoPayType from '../PayTypeSelector/NoPayType'
import CreditPayType from '../PayTypeSelector/CreditPayType'
import PurchaseOrder from '../PayTypeSelector/PurchaseOrder'

const PayTypeSelector = () => {
  const [payment_type, setPayment] = useState('')

  let PayTypeRender = NoPayType

  const handleChange = (value) => {
    setPayment(value)
  }

  return (
    <div className="field">
      <select onChange={(e) => handleChange(e.target.value)} id="order_pay_type" name="order[pay_type]">
        <option value="">Select a payment method</option>
        <option value="Check">Check</option>
        <option value="Credit card">Credit card</option>
        <option value="Purchase order">Purchase order</option>
      </select>
      
      {payment_type === 'Check' && <CheckPayType />}
      {payment_type === 'Credit card' && <CreditPayType />}
      {payment_type === 'Purchase order' && <PurchaseOrder />}
      {payment_type === '' && <NoPayType />}
    </div>
  );
}

// PayTypeSelector.defaultProps = {
 
// }

// PayTypeSelector.propTypes = {
  
// }

export default PayTypeSelector