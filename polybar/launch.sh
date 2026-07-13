#!/usr/bin/env bash

# Завершаем работу уже запущенных баров
killall -q polybar

# Запускаем отдельные блоки
polybar left 2>&1 | tee -a /tmp/polybar-left.log &
polybar center 2>&1 | tee -a /tmp/polybar-center.log &
polybar right 2>&1 | tee -a /tmp/polybar-right.log &
