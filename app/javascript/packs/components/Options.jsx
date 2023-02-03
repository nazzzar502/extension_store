import React from "react";

const Options = ({ optionsSet }) => {
  return (
    <>
      {optionsSet.map((option, index) => {
        return (
          <option key={index} value={option.value}>
            {option.text}
          </option>
        );
      })}
    </>
  );
};

export default Options;
