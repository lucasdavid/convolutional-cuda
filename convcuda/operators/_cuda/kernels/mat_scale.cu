__global__ void
mat_scale(float alpha, float *a, float *c, int size_x, int size_y)
{
    const int i = %(N_THREADS_0)s * blockIdx.x + threadIdx.x,
              j = %(N_THREADS_1)s * blockIdx.y + threadIdx.y;

    if (i < size_x && j < size_y)
    {
        int k = i * size_y + j;
        c[k] = alpha * a[k];
    }
}