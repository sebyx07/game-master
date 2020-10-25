import React from 'react';

export default function Iframe({url}){
  const style = {width: "1px", minWidth: "100%", height: "1px", minHeight: "100%", border: 0};
  return(
    <div>
      <iframe src={url}
              scrolling="no"
              style={style}/>
    </div>
  )
}