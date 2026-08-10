.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V
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

    .line 755
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 1

    .line 758
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$4;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    .line 759
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShot2SeeEndTime()V

    .line 760
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    return-void
.end method
