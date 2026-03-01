FROM public.ecr.aws/lambda/python:3.11

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy application
COPY app ./app

# Set Lambda handler
CMD ["app.main.handler"]