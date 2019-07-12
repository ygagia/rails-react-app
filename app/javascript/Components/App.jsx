import React, { Fragment } from 'react';

const App = ({cars}) => (
  <Fragment>
    <h1>Cars list</h1>

    <ul>
      {
        cars.map((car) =>
          <li key={car.id}>{car.model}</li>
        )
      }
    </ul>
  </Fragment>
);

export default App;
