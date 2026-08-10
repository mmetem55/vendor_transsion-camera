.class Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;
.super Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;
.source "SuperNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoAlgoCaptureFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$NoAlgoCaptureFlow;->this$0:Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;-><init>(Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;)V

    return-void
.end method


# virtual methods
.method isNeedDeviceCaptureSound()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method onCaptureStart()V
    .locals 1

    .line 766
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$CaptureFlow;->onCaptureStart()V

    .line 767
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->superNightAlgorithm(I)V

    return-void
.end method
