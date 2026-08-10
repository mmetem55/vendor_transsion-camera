.class Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;
.super Ljava/lang/Object;
.source "FaceAttribute.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$200(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->setFaceAttribute(Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$000(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttributeParameterConfigure;->resetFaceDetectionState()V

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$2;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->access$100(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V

    return-void
.end method
