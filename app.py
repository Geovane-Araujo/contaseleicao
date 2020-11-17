import json
import os
import psycopg

from flask import Flask

app = Flask(__name__)


@app.route('/politiciansdata')
def divudacaoconta():
    data = lerJson('120000633197.json')
    nome = data.get("nomeUrna")
    arquivos = listarArquivos()
    return data

#le os arquivos e os retorna em formato mapeado
def lerJson(arquivo):
    with open(arquivo,'r',encoding='utf8') as f:
        return json.load(f)

#lista os arquivos da pasta para poder importar
def listarArquivos():
    for _,_, arquivo in os.walk("C:\\Users\\geova\\Downloads\\json"):
        return arquivo


if __name__ == '__main__':
    app.run()
