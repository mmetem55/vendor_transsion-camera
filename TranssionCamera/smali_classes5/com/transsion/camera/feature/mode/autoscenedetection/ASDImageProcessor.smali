.class public Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
.source "ASDImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mArcFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    const-string p1, "-1"

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected algorithmProcess([BIIII)[B
    .locals 2

    .line 42
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    const-string v1, "0"

    .line 44
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    const-string v1, "-1"

    .line 45
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "arc filter algorithm process"

    invoke-static {p5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    invoke-static {p1, p3, p4, p2, p0}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->process([BIIILjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->onTakePicture(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;)V

    return-void
.end method

.method public onTakePicture(Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->onTakePicture(Lcom/transsion/camera/app/common/mode/CaptureInfo;)V

    .line 36
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDCaptureInfo;->mArcFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;->mArcFilter:Ljava/lang/String;

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTakePicture asdCaptureInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
