.class Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;
.super Landroid/telephony/TelephonyCallback;
.source "AutoSelectPreferenceController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;->this$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateUiAutoSelectValue(Landroid/telephony/ServiceState;)V

    return-void
.end method
