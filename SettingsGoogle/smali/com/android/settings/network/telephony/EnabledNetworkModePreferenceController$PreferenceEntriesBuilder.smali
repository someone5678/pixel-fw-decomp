.class final Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
.super Ljava/lang/Object;
.source "EnabledNetworkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferenceEntriesBuilder"
.end annotation


# instance fields
.field private mAllowed5gNetworkType:Z

.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private mContext:Landroid/content/Context;

.field private mDisplay2gOptions:Z

.field private mDisplay3gOptions:Z

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntriesValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIs5gEntryDisplayed:Z

.field private mIsGlobalCdma:Z

.field private mLteEnabled:Z

.field private mSelectedEntry:I

.field private mShow4gForLTE:Z

.field private mSubId:I

.field private mSummary:Ljava/lang/String;

.field private mSupported5gRadioAccessFamily:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;


# direct methods
.method public static synthetic $r8$lambda$Zvd0d2P7Edu7a0T0X-ZU3ubwnfQ(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$getEntryValues$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bdNJaZsFswsss8Mofvb6lZLMWZM(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$setSelectedEntry$2(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qdU4fhR0urk3eM42FqyyDVIaaNQ(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;Ljava/util/List;[II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->lambda$setPreferenceEntries$0(Ljava/util/List;[II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetEntries(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntries()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEntryValues(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEntryValues()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectedEntryValue(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSelectedEntryValue()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetPreferenceValueAndSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    .line 211
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    .line 214
    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 215
    iput p3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 216
    invoke-static {p2}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    .line 217
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 218
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    return-void
.end method

.method private add1xEntry(I)V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e8a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add2gEntry(I)V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e8b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add3gEntry(I)V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e8c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add4gEntry(I)V
    .locals 3

    .line 801
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e8e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040e8d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private add5gEntry(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt p1, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 757
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 758
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040e8f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    goto :goto_1

    .line 762
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide 5G option.  supported5GRadioAccessFamily: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " allowed5GNetworkType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isNRValue: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnabledNetworkMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private addCustomEntry(Ljava/lang/String;I)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addGlobalEntry(I)V
    .locals 3

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGlobalEntry.  supported5GRadioAccessFamily: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allowed5GNetworkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnabledNetworkMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040ea3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    .line 778
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLteEntry(I)V
    .locals 3

    .line 789
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040ea5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040ea4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    const/16 p0, 0x21

    return p0

    :pswitch_2
    const/16 p0, 0x20

    return p0

    :pswitch_3
    const/16 p0, 0x1f

    return p0

    :pswitch_4
    const/16 p0, 0x1e

    return p0

    :pswitch_5
    const/16 p0, 0x1d

    return p0

    :pswitch_6
    const/16 p0, 0x1c

    return p0

    :pswitch_7
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0x1b

    return p0

    :pswitch_9
    const/16 p0, 0x1a

    return p0

    :pswitch_a
    const/16 p0, 0x19

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSupportedRadioBitmask(JJ)Z
    .locals 0

    and-long p0, p3, p1

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAllEntries()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 835
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getEnabledNetworkType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 5

    .line 442
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    .line 443
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    .line 447
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lte_service_forced"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 446
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 450
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v3

    .line 451
    iget-object v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_0

    .line 453
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto/16 :goto_0

    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 470
    :pswitch_0
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 466
    :pswitch_1
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 459
    :pswitch_2
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 476
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 478
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    if-nez v2, :cond_4

    .line 479
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_3

    .line 480
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 481
    :cond_3
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 482
    iget-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    if-nez v2, :cond_5

    .line 483
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    :cond_5
    if-nez v0, :cond_7

    .line 485
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_6

    .line 486
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 487
    :cond_6
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 488
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    if-nez v0, :cond_8

    .line 489
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 490
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz v0, :cond_9

    .line 491
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 493
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_0

    .line 494
    :cond_a
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    .line 499
    :cond_b
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 500
    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :cond_c
    const-string v2, "EnabledNetworkMode"

    if-nez v1, :cond_e

    const-string/jumbo v0, "phoneType: PHONE_TYPE_NONE"

    .line 504
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p0, :cond_d

    .line 506
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    .line 507
    :cond_d
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :goto_1
    move-object v0, p0

    .line 510
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabledNetworkType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getEntries()[Ljava/lang/String;
    .locals 1

    .line 830
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getEntryValues()[Ljava/lang/String;
    .locals 1

    .line 839
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    .line 840
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 841
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 842
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 430
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->showNrList()Z

    move-result v1

    const-string v2, "EnabledNetworkMode"

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network mode :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reduce NR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->reduceNrToLteNetworkType(I)I

    move-result v0

    .line 437
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredNetworkMode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getSelectedEntryValue()I
    .locals 0

    .line 846
    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    return p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method private is5gEntryDisplayed()Z
    .locals 0

    .line 876
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIs5gEntryDisplayed:Z

    return p0
.end method

.method private static synthetic lambda$getEntryValues$1(I)[Ljava/lang/String;
    .locals 0

    .line 842
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$setPreferenceEntries$0(Ljava/util/List;[II)V
    .locals 1

    .line 375
    sget-object v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->$SwitchMap$com$android$settings$network$telephony$NetworkModeChoicesProto$UiOptions$PresentFormat:[I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 424
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported ui options format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 420
    :pswitch_0
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 421
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_1
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    .line 417
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    goto :goto_0

    .line 413
    :pswitch_2
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addNrToLteNetworkType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add5gEntry(I)V

    goto :goto_0

    .line 410
    :pswitch_3
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addLteEntry(I)V

    goto :goto_0

    .line 407
    :pswitch_4
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add4gEntry(I)V

    goto :goto_0

    .line 401
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 402
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040eb4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget p2, p2, p3

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    goto :goto_0

    .line 395
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 396
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040eb3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aget p2, p2, p3

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addCustomEntry(Ljava/lang/String;I)V

    goto :goto_0

    .line 392
    :pswitch_7
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->addGlobalEntry(I)V

    goto :goto_0

    .line 387
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    if-eqz p1, :cond_0

    .line 388
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add3gEntry(I)V

    goto :goto_0

    .line 382
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    if-eqz p1, :cond_0

    .line 383
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add2gEntry(I)V

    goto :goto_0

    .line 377
    :pswitch_a
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    if-eqz p1, :cond_0

    .line 378
    aget p1, p2, p3

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->add1xEntry(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$setSelectedEntry$2(ILjava/lang/Integer;)Z
    .locals 0

    .line 851
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reduceNrToLteNetworkType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0x16

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x11

    return p0

    :pswitch_4
    const/16 p0, 0xf

    return p0

    :pswitch_5
    const/16 p0, 0xc

    return p0

    :pswitch_6
    const/16 p0, 0xa

    return p0

    :pswitch_7
    const/16 p0, 0x9

    return p0

    :pswitch_8
    const/16 p0, 0x8

    return p0

    :pswitch_9
    const/16 p0, 0xb

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPreferenceValueAndSummary()V
    .locals 1

    .line 745
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    return-void
.end method

.method private setSelectedEntry(I)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;-><init>(I)V

    .line 851
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    .line 855
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 857
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    goto :goto_0

    :cond_1
    const-string p0, "EnabledNetworkMode"

    const-string p1, "entriesValue is empty"

    .line 859
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setSummary(I)V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setSummary(Ljava/lang/String;)V
    .locals 0

    .line 872
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    return-void
.end method

.method private showNrList()Z
    .locals 1

    .line 782
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method setPreferenceEntries()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 276
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->clearAllEntries()V

    .line 277
    invoke-static {}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->newBuilder()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    .line 278
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getEnabledNetworkType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    .line 279
    sget-object v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;->$SwitchMap$com$android$settings$network$telephony$NetworkModeChoicesProto$EnabledNetworks:[I

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x7f01008f

    const v3, 0x7f010092

    packed-switch v1, :pswitch_data_0

    .line 362
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported enabled network types."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 358
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    const v1, 0x7f01008d

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f0100b6

    .line 346
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeCdmaEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 348
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeGsmEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 349
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 339
    :pswitch_3
    invoke-virtual {v0, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 340
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 341
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 342
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 332
    :pswitch_4
    invoke-virtual {v0, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 334
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 335
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    const v1, 0x7f010090

    .line 326
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 327
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 328
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 320
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :pswitch_7
    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 315
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v1, 0x7f01008e

    .line 309
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const v1, 0x7f010091

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const v1, 0x7f01008a

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 298
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const v1, 0x7f010089

    .line 290
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add1xEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    const v1, 0x7f01008b

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 284
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add1xEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 285
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v0

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getChoices()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 367
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 368
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getFormatList()Ljava/util/List;

    move-result-object v2

    .line 369
    array-length v3, v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    .line 374
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;Ljava/util/List;[I)V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void

    .line 370
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " index error."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setPreferenceValueAndSummary(I)V
    .locals 11

    .line 521
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const v0, 0x7f040e8e

    const v1, 0x7f040e8d

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const v5, 0x7f040ea5

    const v6, 0x7f040ea4

    const/16 v7, 0xa

    const v8, 0x7f040e8f

    const v9, 0x7f040ea3

    const v10, 0x7f040e8c

    packed-switch p1, :pswitch_data_0

    .line 670
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    .line 671
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040e21

    new-array v3, v3, [Ljava/lang/Object;

    .line 672
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 671
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 670
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_0
    const/16 p1, 0x21

    .line 649
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 651
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    const/16 p1, 0x1b

    .line 658
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 660
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v4, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 662
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 663
    :cond_1
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_2
    const/16 p1, 0x19

    .line 654
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 655
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    const/16 p1, 0x1a

    .line 640
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 642
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_4
    const/16 p1, 0x15

    .line 588
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 590
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_5
    const/16 p1, 0x12

    .line 526
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 528
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    :pswitch_6
    const/16 p1, 0xd

    .line 603
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 604
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 612
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x16

    .line 613
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 615
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 618
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 620
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-eq p1, v4, :cond_8

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    .line 622
    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 625
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 626
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 629
    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v6

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 623
    :cond_8
    :goto_4
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 553
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f04106b

    .line 554
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 560
    :cond_9
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_d

    const/16 p1, 0x9

    .line 561
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 564
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move v0, v5

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto/16 :goto_8

    .line 567
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v1, v6

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 571
    :cond_d
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 573
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 577
    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f04106a

    .line 578
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :cond_e
    const/16 p1, 0x8

    .line 581
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 583
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->is5gEntryDisplayed()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    move v5, v6

    :goto_7
    invoke-direct {p0, v5}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_b
    const/4 p1, 0x5

    .line 599
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f040e8a

    .line 600
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    :pswitch_c
    const/4 p1, 0x4

    .line 595
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 596
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 543
    :pswitch_d
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_10

    .line 544
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    const p1, 0x7f040e8b

    .line 545
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 547
    :cond_10
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 549
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 533
    :pswitch_e
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-nez p1, :cond_11

    .line 534
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 535
    invoke-direct {p0, v10}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    goto :goto_8

    .line 537
    :cond_11
    invoke-direct {p0, v7}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSelectedEntry(I)V

    .line 539
    invoke-direct {p0, v9}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setSummary(I)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfig()V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 224
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    .line 226
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    .line 225
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    .line 229
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 230
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v1

    .line 229
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->checkSupportedRadioBitmask(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    if-eqz v0, :cond_3

    .line 233
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v1, "show_cdma_choices_bool"

    .line 234
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    const-string/jumbo v1, "show_4g_for_lte_data_icon_bool"

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    const-string/jumbo v1, "prefer_2g_bool"

    .line 238
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    .line 241
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    .line 244
    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0100ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 246
    array-length v3, v1

    if-lez v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 248
    iget v4, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    move v4, v2

    .line 252
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 253
    aget v5, v1, v4

    if-ne v3, v5, :cond_1

    .line 254
    iput-boolean v2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const-string v1, "lte_enabled_bool"

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    .line 263
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceEntriesBuilder: subId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,Supported5gRadioAccessFamily :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSupported5gRadioAccessFamily:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mAllowed5gNetworkType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mAllowed5gNetworkType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,IsGlobalCdma :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display2gOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display3gOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Display4gOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,Show4gForLTE :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EnabledNetworkMode"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
