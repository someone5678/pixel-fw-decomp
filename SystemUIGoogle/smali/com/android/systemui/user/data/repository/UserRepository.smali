.class public interface abstract Lcom/android/systemui/user/data/repository/UserRepository;
.super Ljava/lang/Object;
.source "UserRepository.kt"


# virtual methods
.method public abstract getLastSelectedNonGuestUserId()I
.end method

.method public abstract getSecondaryUserId()I
.end method

.method public abstract getSelectedUserInfo()Landroid/content/pm/UserInfo;
.end method

.method public abstract getSelectedUserInfo()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfos()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUserSwitcherSettings()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isGuestUserAutoCreated()Z
.end method

.method public abstract isGuestUserCreationScheduled()Ljava/util/concurrent/atomic/AtomicBoolean;
.end method

.method public abstract isGuestUserResetting()Z
.end method

.method public abstract isSimpleUserSwitcher()Z
.end method

.method public abstract isStatusBarUserChipEnabled()Z
.end method

.method public abstract refreshUsers()V
.end method

.method public abstract setGuestUserResetting(Z)V
.end method

.method public abstract setSecondaryUserId(I)V
.end method
