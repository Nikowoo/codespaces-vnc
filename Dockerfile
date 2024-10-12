FROM gitpod/workspace-full-vnc

# Update and install dependencies for Chrome and XFCE
RUN sudo apt-get update \
 && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
   xfce4 \
   xfce4-goodies \
   libgtk2.0-0 \
   libgtk-3-0 \
   libnotify-dev \
   libgconf-2-4 \
   libnss3 \
   libxss1 \
   libasound2 \
   libxtst6 \
   xauth \
   xvfb \
 && sudo rm -rf /var/lib/apt/lists/*

# Optional: Set up a VNC server configuration for XFCE
# RUN sudo apt-get install -y tightvncserver \
# && mkdir -p ~/.vnc \
# && echo "password" | vncpasswd -f > ~/.vnc/passwd \
# && chmod 600 ~/.vnc/passwd

# Optional: Set XFCE as the default session for VNC
# RUN echo "startxfce4 &" > ~/.vnc/xstartup \
# && chmod +x ~/.vnc/xstartup
