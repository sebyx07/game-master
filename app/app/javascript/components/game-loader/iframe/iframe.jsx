import React from 'react';

export default function Iframe({url}) {
  const style = {border: 0, height: '1px', minHeight: '100%', minWidth: '100%', width: '1px'};
  return (
    <div>
      <iframe src={url}
        scrolling="no"
        style={style}/>
    </div>
  );
}
