.class final Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WifiCallingViewPagerAdapter"
.end annotation


# instance fields
.field private final mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    .line 207
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 208
    iput-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$fgetmSil(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    if-nez v0, :cond_0

    const-string p0, "Adapter getCount null mSil "

    .line 240
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter getCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$fgetmSil(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$fgetmSil(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 219
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$fgetmSil(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter getItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for subId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "need_search_icon_in_action_bar"

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "subId"

    .line 223
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    new-instance p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;-><init>()V

    .line 225
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->-$$Nest$fgetmSil(Lcom/android/settings/wifi/calling/WifiCallingSettings;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 213
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adapter instantiateItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    .line 234
    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p2

    .line 233
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
