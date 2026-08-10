.class Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;
.super Landroid/os/Handler;
.source "FaceDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    if-nez p0, :cond_0

    .line 85
    invoke-static {}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage faceDetectionUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 92
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->access$300(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    :goto_0
    return-void
.end method
