# user base python image
FROM python:alpine

# change container working directory
WORKDIR /usr/src/app

# Copy and install required modules
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# Copy flask files to container
COPY ./main.py ./

# Run server
CMD [ "python", "./main.py" ]
