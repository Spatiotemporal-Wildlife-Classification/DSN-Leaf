# Start from the official Base Image
FROM python:3.10

# Copy the file with the requirements to the '/app' directory.
COPY requirements.txt .

# Install requirements
RUN pip install --no-cache-dir --upgrade -r ./requirements.txt

EXPOSE 5000

# Copy all of the code from the origin to the docker mounted directory
ADD . .
WORKDIR .

# Run the server
CMD ["python", "-u", "main.py"]