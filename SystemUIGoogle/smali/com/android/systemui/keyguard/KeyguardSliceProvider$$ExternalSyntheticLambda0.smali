.class public final synthetic Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    sget v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->ALARM_VISIBILITY_HOURS:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    return-void
.end method
