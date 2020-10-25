import React from 'react';
import Iframe from "./iframe/iframe";

export default function Layout({game}){
  return(
    <div>
      <Iframe url={game.iframeUrl}/>
    </div>
  )
}