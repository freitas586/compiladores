# Use a imagem oficial do Ubuntu 22.04
FROM mcr.microsoft.com/devcontainers/base:noble


# Evita prompts durante a instalação
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza os repositórios e instala as dependências necessárias:
# - openjdk-17-jdk (versão padrão disponível no 22.04)
# - ant
# - build-essential
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk ant build-essential && \
    rm -rf /var/lib/apt/lists/*

# Define o comando padrão para abrir um shell
CMD ["tail", "-f", "/dev/null"]