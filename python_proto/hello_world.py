print(__name__)

def helloWorld():
  print('hello world')
  import document
  for line in document.getElementById('text').innerText:

  newDiv = document.createElement('div')
  newDiv.innerText = line

if '__main__' == __name__:
  helloWorld()