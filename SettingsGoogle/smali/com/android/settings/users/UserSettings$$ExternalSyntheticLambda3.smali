.class public final synthetic Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->$r8$lambda$kP8ONIr8puW7eI1nEXo9mNBZfQM(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method
