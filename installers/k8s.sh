curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

TITLE="# For kubectl command auto-completion and alias"
CONTENT=(
'source <(kubectl completion zsh)
alias k='kubectl'
compdef __start_kubectl k'
)

append_if_not_exists_in_script "$TITLE" "$CONTENT"

rm kubectl


read -p "$(color_text "Install minikube? (y/n): " "green")" install_minikube
if [ "$install_minikube" = "y" ] || [ "$install_minikube" = "Y" ]; then
    curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

    add_plugin_if_not_exists "minikube"
fi