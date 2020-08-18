#!/system/bin/sh

# Performance
#CPU Tweaks
echo "schedutil" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "schedutil" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo "1766400" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo "576000" > /sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq
echo "2803200" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo "0" > /sys/devices/system/cpu/cpufreq/policy4/schedutil/up_rate_limit_us
echo "0" > /sys/devices/system/cpu/cpufreq/policy4/schedutil/down_rate_limit_us
echo "0" > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us
echo "0" > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us

#GPU Tweaks
echo "0" > /sys/class/kgsl/kgsl-3d0/throttling
echo "0" > /sys/class/kgsl/kgsl-3d0/bus_split
echo "1" > /sys/class/kgsl/kgsl-3d0/force_bus_on
echo "1" > /sys/class/kgsl/kgsl-3d0/force_rail_on
echo "1" > /sys/class/kgsl/kgsl-3d0/force_clk_on
echo "msm-adreno-tz" > /sys/class/kgsl/kgsl-3d0/devfreq/governor
echo "3" > /sys/class/kgsl/kgsl-3d0/devfreq/adrenoboost

#Charging mode
echo "2800000" > /sys/class/power_supply/battery/constant_charge_current_max

# I/O
echo "fiops" > /sys/block/sda/queue/scheduler
echo "fiops" > /sys/block/sdb/queue/scheduler
echo "fiops" > /sys/block/sdc/queue/scheduler
echo "fiops" > /sys/block/sdd/queue/scheduler
echo "fiops" > /sys/block/sde/queue/scheduler
echo "fiops" > /sys/block/sdf/queue/scheduler

#Input boost
echo "0:1344000" > /sys/module/cpu_boost/parameters/input_boost_freq
echo 120 > /sys/module/cpu_boost/parameters/input_boost_ms

# Thermal Skip (Charging)
echo "N" > /sys/module/smb_lib/parameters/skip_thermal

# WQPower Saving
echo "N" > /sys/module/workqueue/parameters/power_efficient

#GPU Clock Speed
echo "342000000" > /sys/class/kgsl/kgsl-3d0/devfreq/min_freq
echo "342000000" > /sys/class/kgsl/kgsl-3d0/gpuclk
echo "342" > /sys/class/kgsl/kgsl-3d0/min_clock_mhz
echo "710000000" > /sys/class/kgsl/kgsl-3d0/devfreq/max_freq
echo "710" > /sys/class/kgsl/kgsl-3d0/max_clock_mhz
