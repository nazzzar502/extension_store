import React from 'react'
import StarInteractive from '../../packs/components/shared/StarInteractive'
import { useState } from "react";
import Star from '../../packs/components/shared/Star';
import StarFill from '../../packs/components/shared/StarFill';

export const RaitingSetter = () => {
  const raitingArray = [...Array(5)]

  let [state, setState] = useState('star')
  let [globalId, setGlobalId] = useState(0)

  let fixed = false

  const changeRaiting = (index) => {
    setState('starFill')
    setGlobalId(index)
  }
  
  const removeRaiting = () => {
    fixed ? '' : setState('star')
  }

  const setRaiting = (index) => {
    fixed = true
    setGlobalId(index)
  }

  return (
    raitingArray.map((el, index) => {
      return <StarInteractive 
        key={index} item={state} 
        changeRaiting={changeRaiting} 
        removeRaiting={removeRaiting} 
        setRaiting={setRaiting}
        index={index} 
        globalId={globalId}
      />
    })
  )
}
