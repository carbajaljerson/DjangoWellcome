# Use the official Python image
FROM python:3.11.4

# setup environment variable  
ENV DockerHOME=/home/app/webapp  

# set work directory  
RUN mkdir -p $DockerHOME  

# Set the working directory inside the container
WORKDIR $DockerHOME

#environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#copy the rest of the application files to the container's working directory
COPY . $DockerHOME

# install dependencies  
RUN pip install --upgrade pip  

# run this command to install all dependencies  
RUN pip install -r requirements.txt  

# Expose the port that Django will run on
EXPOSE 8000

# Command to run your Django application
# CMD python manage.py runserver
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
