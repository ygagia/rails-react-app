import React, { Fragment } from 'react';

const App = ({cars}) => (
  <ul>
    {
      cars.map((car) =>
        <li key={car.id}>{car.model}</li>
      )
    }
  </ul>
);

export default App;
