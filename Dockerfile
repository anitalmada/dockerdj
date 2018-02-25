#imagen de Python para runtime
 FROM python:3
#Definir variable de entorno
 ENV PYTHONUNBUFFERED 1
#Crear el directorio /code
 RUN mkdir /code
#Establecer /code como directorio de trabajo
 WORKDIR /code
#Añadir archivo requirements.txt
 ADD requirements.txt /code/
#Instalar dependencias especifcadas en ese archivo
 RUN pip install -r requirements.txt
#Copiar todo el contenido del directorio en el container /code/
 ADD . /code/
