.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;->f$2:[Ljava/lang/CharSequence;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->$r8$lambda$6Eiy3Dn7ks1KXarqTHK3dtbksDo(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method
