// PWR003: Explicitly declare pure functions

extern double gravity(const int planetIdx);

// Computes the weight of each object in a vector
void example(const int N, const double *masses, double *weights) {
  for (int i = 0; i < N; ++i) {
    weights[i] = masses[i] * gravity(3);
  }
}
