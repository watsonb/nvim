FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
RUN apt-get update && apt-get install -y 
    software-properties-common 
    curl 
    git 
    build-essential 
    unzip 
    ripgrep 
    fd-find 
    fzf 
    zsh 
    python3-pip 
    python3-venv 
    php-cli 
    wget 
    gnupg 
    && rm -rf /var/lib/apt/lists/*

# Install Neovim (unstable PPA for latest features)
RUN add-apt-repository ppa:neovim-ppa/unstable -y 
    && apt-get update 
    && apt-get install -y neovim 
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (needed for many LSPs and Mason)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - 
    && apt-get install -y nodejs

# Install Go
RUN GO_VERSION=$(curl -s https://go.dev/VERSION?m=text | head -n1) 
    && curl -LO https://go.dev/dl/${GO_VERSION}.linux-amd64.tar.gz 
    && tar -C /usr/local -xzf ${GO_VERSION}.linux-amd64.tar.gz 
    && rm ${GO_VERSION}.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

# Install .NET SDK
RUN wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh 
    && chmod +x dotnet-install.sh 
    && ./dotnet-install.sh --channel 8.0 
    && rm dotnet-install.sh
ENV PATH=$PATH:/root/.dotnet

# Install Terraform
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg 
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list 
    && apt-get update && apt-get install terraform

# Install Yazi (file manager)
RUN curl -LO https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-gnu.zip 
    && unzip yazi-x86_64-unknown-linux-gnu.zip 
    && mv yazi-x86_64-unknown-linux-gnu/yazi /usr/local/bin/ 
    && rm -rf yazi-x86_64-unknown-linux-gnu*

# Install Ansible-lint for Ansible LSP
RUN pip3 install ansible-lint

# Set up user environment
USER vscode
RUN mkdir -p /home/vscode/.config/nvim

# Set the default shell to zsh
ENV SHELL=/usr/bin/zsh
