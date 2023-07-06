.class public interface abstract Lcom/android/systemui/stylus/StylusManager$StylusBatteryCallback;
.super Ljava/lang/Object;
.source "StylusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stylus/StylusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StylusBatteryCallback"
.end annotation


# virtual methods
.method public abstract onStylusBluetoothChargingStateChanged(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onStylusUsiBatteryStateChanged(ILandroid/hardware/BatteryState;)V
.end method
