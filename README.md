# 🔧 Linux Setup Inicial — Ubuntu Workstation

Este repositório documenta um conjunto de instruções para a configuração inicial de uma máquina Ubuntu, voltada para uso geral, desenvolvimento e otimização de hardware (como controle de ventoinha). Inclui particionamento, ferramentas essenciais, drivers, fontes e configuração de sensores de hardware.

---

## 🗂️ Particionamento Sugerido

Durante a instalação do Ubuntu, recomenda-se o seguinte particionamento manual:

| Ponto de Montagem | Tamanho     | Observações                    |
|-------------------|-------------|--------------------------------|
| `swap`            | 16 GB       | Equivalente a 16384 MB         |
| `/boot/efi`       | 128 MB      | Partição UEFI                  |
| `/` (raiz)        | 120 GB      | Sistema principal              |
| `/boot`           | 1 GB        | Kernel e arquivos de boot      |
| `/tmp`            | 30 GB       | Arquivos temporários           |
| `/var`            | 40 GB       | Logs e arquivos variáveis      |
| `/home`           | 150 GB      | Dados do usuário               |

---

## 🧾 Informações do Sistema

Execute os comandos abaixo para verificar a versão e distribuição do sistema:

```bash
cat /proc/version
cat /etc/issue
```

---

## 🔧 Pós-instalação Ubuntu

### Adicionar Repositórios e Atualizar Sistema

```bash
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
```

### Instalar Pacotes Essenciais

```bash
sudo apt install ubuntu-restricted-extras
sudo apt install build-essential
sudo apt install net-tools
sudo apt-get install ffmpeg
sudo apt install dkms
```

### Ferramentas Gerais de Sistema

```bash
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    git \
    lsb-release
```

### Instalar Drivers Proprietários (como NVIDIA)

```bash
sudo ubuntu-drivers install
```

---

## 🧰 Menu Personalizado

Instale o **Alacarte**, um editor gráfico de menus (útil para ambientes como GNOME):

```bash
sudo apt install alacarte
```

---

## 🔤 Fontes Microsoft

Para compatibilidade com documentos e navegação:

```bash
sudo apt install ttf-mscorefonts-installer
sudo fc-cache
fc-match Arial
```

---

## 🐍 Ambiente Python

Instalação completa do Python 3, ferramentas gráficas e bibliotecas:

```bash
sudo apt install python3-full python3-pip graphviz
pip3 install pydot graphviz
```

---

## 🌡️ Controle de Temperatura e Ventoinha

Para monitoramento e controle de sensores de hardware:

```bash
sudo apt install lm-sensors
sudo sensors-detect
sensors
sudo pwmconfig
```

> 💡 **Dica:** Após configurar com `pwmconfig`, pode-se automatizar o controle das ventoinhas com `fancontrol`.

---

## ✅ Verificações Finais

1. Verifique se os drivers de vídeo estão corretamente instalados.
2. Confirme o reconhecimento de todos os sensores com `sensors`.
3. Teste se o menu personalizado com `alacarte` está disponível no sistema.
4. Confirme a renderização de fontes com `fc-match Arial`.

---

## 📁 Organização Sugerida para o Repositório

```text
📁 setup-linux/
├── README.md
├── scripts/
│   └── setup-python.sh
│   └── setup-sensors.sh
│   └── install-fonts.sh
├── notes/
│   └── particionamento.txt
```

---

## 🧠 Sobre

Este setup foi pensado para desenvolvedores, analistas de dados, usuários avançados e estudantes que desejam um ambiente Ubuntu produtivo desde o primeiro boot.

---