.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;
.super Ljava/lang/Object;
.source "DualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$1;)V
    .locals 0

    .line 702
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)V

    return-void
.end method


# virtual methods
.method public notifyVideoPictureTaken([B)V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "notifyVideoPictureTaken"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode$MyDualVideoPictureCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoMode;[BLandroid/graphics/Bitmap;)V

    return-void
.end method
