.class public final synthetic Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellInfo$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;

    return-void
.end method


# virtual methods
.method public final onNameChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;

    sget v0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellStatusBarView;->updateName()V

    return-void
.end method
