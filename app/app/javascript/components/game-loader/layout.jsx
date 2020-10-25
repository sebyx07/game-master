import Iframe from './iframe/iframe';
import React from 'react';

export default function Layout({game}) {
  return (
    <div>
      <Iframe url={game.iframeUrl}/>
    </div>
  );
}
