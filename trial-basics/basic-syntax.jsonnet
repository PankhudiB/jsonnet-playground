local house_rum = 'Banks Rum';

{
  // A definition next to fields.
  local pour = 1.5,

  Daiquiri: {
    ingredients: [
      { kind: house_rum, qty: pour },
      { kind: 'Simple Syrup', qty: 0.5 },
    ],
    served: 'Straight Up',
  }
}