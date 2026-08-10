.class Lcom/transsion/camera/app/common/mode/ImageProcessor$4;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CaptureSurface$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BIIIZI)V
    .locals 6

    .line 245
    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p5, p5, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p6, "[CapturePerformance] mPostViewCallback notifyPictureTaken"

    invoke-static {p5, p6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$4;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget v5, v0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mCaptureOrientation:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onPostViewData([BIIII)V

    return-void
.end method

.method public onPictureTakenFail()V
    .locals 0

    return-void
.end method
