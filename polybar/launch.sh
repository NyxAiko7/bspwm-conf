#!/usr/bin/env bash

# Завершаем работу уже запущенных баров
polybar-msg cmd quit 2>/dev/null || killall -q polybar

# Ждем, пока процессы полностью завершатся
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запускаем бар с именем "example" (сверьте имя с вашим config.ini!)
polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar запущен..."
