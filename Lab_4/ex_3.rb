# frozen_string_literal: true

def generate_matrix(size, k)
  raise 'Invalid size' if size < 3 || size > 9

  matrix = []
  (0..(size - 1)).each do |i|
    inner_array = []
    (0..(size - 1)).each do |j|
      if i.eql?(j)
        inner_array.push(2)
      else
        inner_array.push(k + 2)
      end
      # inner_array.push(rand(-10..10))
    end
    matrix.push(inner_array)
  end
  matrix
end

def gaussian_method(matrix, vector)
  0.upto(matrix.size - 2) do |pivot_idx|
    max_rel_val = 0
    max_idx = pivot_idx
    (pivot_idx).upto(matrix.size - 1) do |row|
      rel_val = matrix[row][pivot_idx] / matrix[row].map(&:abs).max
      if rel_val >= max_rel_val
        max_rel_val = rel_val
        max_idx = row
      end
    end

    # Swap the best pivot row into place.
    matrix[pivot_idx], matrix[max_idx] = matrix[max_idx], matrix[pivot_idx]
    vector[pivot_idx], vector[max_idx] = vector[max_idx], vector[pivot_idx]

    pivot = matrix[pivot_idx][pivot_idx]
    (pivot_idx + 1).upto(matrix.size - 1) do |row|
      factor = matrix[row][pivot_idx] / pivot
      matrix[row][pivot_idx] = 0.0
      (pivot_idx + 1).upto(matrix[row].size - 1) do |col|
        matrix[row][col] -= factor * matrix[pivot_idx][col]
      end
      vector[row] -= factor * vector[pivot_idx]
    end
  end

  [matrix, vector]
end

# Assumes 'matrix' is in row echelon form.
def back_substitution(matrix, vector)
  (matrix.size - 1).downto(0) do |row|
    tail = vector[row]
    (row + 1).upto(matrix.size - 1) do |col|
      tail -= matrix[row][col] * vector[col]
      matrix[row][col] = 0.0
    end
    vector[row] = tail / matrix[row][row]
    matrix[row][row] = 1.0
  end
end
