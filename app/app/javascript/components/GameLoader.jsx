import Layout from './game-loader/layout';
import React from 'react';

export default function GameLoader({game}) {
  return (
    <div>
      <Layout game={game}/>
    </div>
  );
}
