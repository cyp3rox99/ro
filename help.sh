#!/bin/bash

echo -e "\n💀 جاري تحويل التيرمنال إلى تيرمنال كالي..."

# تثبيت الأدوات المطلوبة
sudo pacman -S --noconfirm zsh git wget ttf-nerd-fonts-symbols

# تثبيت oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# تثبيت powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# تغيير الثيم في zshrc
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

# تغيير الشل الافتراضي إلى zsh
chsh -s $(which zsh)

# إعادة تحميل التغييرات
source ~/.zshrc

echo -e "\n✅ تم التثبيت بنجاح!"
echo -e "⚠️ أعد تشغيل التيرمنال لاختيار مظهر PowerLevel10k.\n"