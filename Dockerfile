FROM python:3.12-bookworm
WORKDIR /app
RUN pip install playwright==1.50.0 && \
  playwright install --with-deps chromium --only-shell


COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app

CMD ["python", "server.py"]

