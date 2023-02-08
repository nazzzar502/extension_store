import React from 'react'
import Star from './Star'
import StarFill from './StarFill'
import { useState } from "react";

const StarInteractive = ({item, changeRaiting, removeRaiting, setRaiting, index, globalId}) => {
  if(item === 'starFill' && index <= globalId){
   return (
     <span onMouseEnter={() => changeRaiting(index)} onMouseLeave={() => removeRaiting(index)} onClick={() => setRaiting(index)}>
       <StarFill />
     </span>
   )
  } else {
   return (
     <span onMouseEnter={() => changeRaiting(index)} onMouseLeave={() => removeRaiting(index)} onClick={() => setRaiting(index)}>
       <Star />
     </span>
   )
  }
}

StarInteractive.defaultProps = {
  star: 'star',
};

export default StarInteractive