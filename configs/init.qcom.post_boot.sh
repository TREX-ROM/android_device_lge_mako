#!/system/bin/sh

# Fast Charge
    echo 1 > /sys/kernel/fast_charge/force_fast_cha

# CPU HOTPLUG
    # Disable mpdecision
    stop mpdecision
    #echo 0 > /sys/module/msm_mpdecision/enabled

    # Configure MPDEC
    #echo 0 > /sys/kernel/msm_mpdecision/conf/boost_enabled

    # Enable Faux's Intelliplug
    echo 1 > /sys/module/intelli_plug_parameters/intelli_plug_active

# GPU
    # Set max gpu freq to 487 mhz (disable by default)
    echo 487000 > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk
	
# GOVERNOR
    # Set cpu gov to intelliactive; min cpu freq to 162 mhz; max cpu freq to 1512 mhz 
    echo 1 > /sys/devices/system/cpu/cpu1/online
    echo 1 > /sys/devices/system/cpu/cpu2/online
    echo 1 > /sys/devices/system/cpu/cpu3/online
    echo "intelliactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
    echo "intelliactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
    echo "intelliactive" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
    echo "intelliactive" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
    echo 162000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
    echo 162000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
    echo 162000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
    echo 162000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
    echo 1512000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
    echo 1512000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
    echo 1512000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
    echo 1512000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq

# UNDERVOLT
    #echo '-50000' > /sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table
    #echo '-50000' > /sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table
    #echo '-50000' > /sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table
    #echo '-50000' > /sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table
    	
# RPM
    echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
    echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
    echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_dig
    echo 1 > /sys/module/rpm_resources/enable_low_power/vdd_mem

# KRAIT C1 STATE (screen flicking if enabled)
    echo 0 > /sys/module/pm_8x60/modes/cpu0/retention/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu1/retention/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu2/retention/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu3/retention/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu0/retention/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu1/retention/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu2/retention/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu3/retention/suspend_enabled

# KRAIT C2 STATE
    echo 0 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu2/standalone_power_collapse/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu3/standalone_power_collapse/idle_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu2/standalone_power_collapse/suspend_enabled
    echo 0 > /sys/module/pm_8x60/modes/cpu3/standalone_power_collapse/suspend_enabled

# KRAIT C3 STATE
    echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
    echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
    echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
    echo 1 > /sys/module/pm_8x60/modes/cpu2/power_collapse/suspend_enabled
    echo 1 > /sys/module/pm_8x60/modes/cpu3/power_collapse/suspend_enabled
