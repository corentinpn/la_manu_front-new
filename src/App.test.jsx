import React from 'react';
import { render, screen, fireEvent } from '@testing-library/react';
import App from './App';

test('le compteur s’incrémente quand on clique sur le bouton', () => {
  render(<App />);
  
  // Vérifie que le compteur commence à 0
  const button = screen.getByRole('button', { name: /count is 0/i });
  expect(button).toBeInTheDocument();

  // Clique sur le bouton
  fireEvent.click(button);

  // Vérifie que le compteur est passé à 1
  expect(screen.getByRole('button', { name: /count is 1/i })).toBeInTheDocument();
});
