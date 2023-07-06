.class final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;
.super Ljava/lang/Object;
.source "BatteryChartPreferenceController.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$LabelTextGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HourlyChartLabelTextGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    return-void
.end method


# virtual methods
.method public generateFullText(Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 846
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 848
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 849
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->-$$Nest$fgetmIs24HourFormat(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-"

    goto :goto_0

    :cond_1
    const-string v2, " - "

    :goto_0
    aput-object v2, v0, v1

    const/4 v2, 0x2

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s%s%s"

    .line 848
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public generateText(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->access$200(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->-$$Nest$fgetmIs24HourFormat(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Z

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
