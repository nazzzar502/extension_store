import React from "react";
import Star from "../../packs/components/shared/Star";
import StarFill from "../../packs/components/shared/StarFill";
import StarHalf from "../../packs/components/shared/StarHalf";

const Raiting = ({ value }) => {

  const generateRaiting = (raiting) => {
    let arr = [...Array(5)]
    for(let i = 0; i <= 5; i++) {
      if(value > i) {
        arr[i] = <StarFill />
      }
      if(value < i) {
        arr[i] = <Star />
      }
      if(value > i && value < i + 1) {
        arr[i] = <StarHalf />
      }
    }
    return arr
  }

  return (
    generateRaiting(value).map((el, i) => {
      return <span key={i} >{el}</span>
    })
  );
};

Raiting.defaultProps = {
  value: 5,
};

export default Raiting;
