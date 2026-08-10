.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->playCaptureAnimation(Landroid/content/Context;)V

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->takeVideoPicture()V

    .line 555
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startCapture()V

    return-void
.end method
