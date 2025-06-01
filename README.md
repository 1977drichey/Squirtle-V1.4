# Squirtle V1.4
Minimal Alpine MJPEG streamer for Pi Zero W / Zero 2W.
# Squirtle V1.4
Minimal Alpine MJPEG streamer for Pi Zero W / Zero 2W.
# Squirtle V1.4

### Minimal Alpine-Based RTSP MJPEG Streaming OS for Raspberry Pi Zero / Zero 2 W

---

## 🐢 What is Squirtle V1.4?

Squirtle V1.4 is a lightweight, custom Linux image designed to turn your Raspberry Pi Zero or Zero 2 W into a dedicated MJPEG video streamer. It is optimized for low latency and low power usage, replicating the simplicity and performance of MotionEyeOS — but better suited to modern minimal hardware constraints.

---

## 🚀 Features

- 📦 Based on Alpine Linux (ultra-minimal footprint)
- 📸 Uses `motion` to stream MJPEG from the RPi camera
- 🔥 Includes a temperature watchdog script (`heat-watchdog.sh`) to reboot if temps get too high
- 📶 Auto-connects to Wi-Fi (SSID: `NETGEAR42`, password: `heavybug047`)
- 🔑 SSH enabled, default user: `richeyda` / password: `Sally`
- 🎨 ASCII Art MOTD with “OLIVIA” theme on SSH login
- ⚙️ GitHub Actions support (pi-gen workflow ready)

---

## 🔧 Default Directory Structure

```
Squirtle-V1.4/
├── .github/workflows/build-squirtle-alpine.yml
├── etc/
│   ├── apk/repositories
│   ├── init.d/motion
│   ├── motion/motion.conf
│   ├── motd
│   └── wpa_supplicant/wpa_supplicant.conf
├── usr/local/bin/heat-watchdog.sh
├── README.md
```

---

## 🔌 Usage

1. Flash the built image to your Pi Zero or Zero 2 W using Raspberry Pi Imager or `dd`
2. Power it on — it will auto-connect to Wi-Fi
3. SSH in using:
   ```bash
   ssh richeyda@<device-ip>
   password: Sally
   ```
4. MJPEG stream will be available on:
   ```
   http://<device-ip>:8081/
   ```
   (can be proxied into go2rtc or NVR)

---

## 🛡️ Heat Protection

Squirtle V1.4 includes a script that:
- Monitors system temperature
- Reboots the Pi if the temp exceeds ~75°C

Ensure you attach a copper heatsink if using Zero 2 W.

---

## 🧪 Development / Build Instructions

Builds are done using GitHub Actions with a modified `pi-gen` stage. See `.github/workflows/build-squirtle-alpine.yml` for the full CI/CD config.

To build manually:
```bash
git clone https://github.com/RPi-Distro/pi-gen.git
cp -r etc usr .github pi-gen/stage1/
cd pi-gen
sudo ./build.sh
```

---

## 🧠 Credits

- Created by David Richey aka "Master Olivia’s Engineer"
- ASCII art by ChatGPT
- Pokémon spirit by Nintendo 🧢

---

## 📦 Next Version (Squirtle V1.5 Roadmap)

- Switch from `motion` to `v4l2rtspserver` for native RTSP support
- Include animated ASCII art of Jigglypuff at SSH login 🎤
- Streamlined init process and lower idle load
- Optional button-triggered reboot (GPIO)

---

## 🔗 License

MIT — Free to copy, modify, and become the very best.
