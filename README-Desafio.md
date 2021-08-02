# Docker-ELK Tecnisys

Desafio como parte da seleção da Tecnisys


## Infrações por Radar
Diante de imensa malha rodoviária implantada em nosso país, foi gerada uma massa de dados
que representa as infrações cometidas em determinado radar presente em uma rodovia.
Entende-se por infração quando um veículo passou em determinado radar numa velocidade
medida acima de 10% da velocidade permitida pelo radar. Na infração consta o timestamp de
data e hora da infração e a velocidade medida pelo radar naquela rodovia.

## O ambiente

Foi feito um fork de um repositório público que com docker-compose fornece uma solução padrão da Elastic Stack.

A solução fornece containers docker com: 

* Elasticsearch
* Kibana
* Logstash

Foi adicionada uma imagem chamada *elasticsearch-mapping-init* para fazer a criação inicial do índice e mapeamento do dado de geolocalização

Para utilizar o ambienta, fazer um *clone* do projeto:

```bash
git clone https://github.com/bolonheis/docker-elk.git
```

## Uso

```bash
cd docker-elk
docker-compose -f docker-compose.yml up -d --build
```

## O que acontece
O docker-compose iniciará os containers na sequência:

1. Elasticsearch
2. Kibana
3. Elasticsearch-mapping-init
4. Logstash

Após o início do Elasticsearch, o Elasticsearch-mapping-init vai fazer a criação do índice e após isso, o Logstash vai fazer a carga do arquivo CSV que está no diretório *data* e após isso o Kibana estará disponível para criação do *Index Pattern* e de *Dashboards* conforme for necessário.

## Licença
Esse é um projeto privado e todos os direitos são reservados.
