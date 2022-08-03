from threading import Thread

def productoPunto(vect_A, vect_B):
  producto = [0]

  def calculo(vect_A, vect_B, valor):
    resultado = 0
    for i in range(len(vect_A)):
      resultado += vect_A[i] * vect_B[i]
    valor[0] = resultado

  thread_calculo = Thread(target=calculo, args=(vect_A, vect_B, producto))
  
  thread_calculo.start()
  thread_calculo.join()

  return producto[0]


print(productoPunto([1, 2, 3], [4, 5, 6]))