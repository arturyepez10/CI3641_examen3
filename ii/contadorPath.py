import os
from multiprocessing import Pool

def encontrarArchivos(dirAbsoluta, archivos):
  informacion = {}
  informacion['FolderPath'] = dirAbsoluta
  informacion['count'] = len(archivos)

  return informacion

if __name__ == '__main__':

  # Direccion absoluta del directorio donde se quiere contar los archivos 
  roots = r'C:/Users'

  args = ((root, files) for root, dirs, files in os.walk(roots))

  for result in Pool().starmap(encontrarArchivos, args):
    print(result)