.class Lcom/transsion/camera/adapter/CameraProxy2Impl$6;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;->doAddPreviewCallBack(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

.field final synthetic val$callback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method constructor <init>(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V
    .locals 0

    .line 2294
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;->val$callback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;->this$0:Lcom/transsion/camera/adapter/CameraProxy2Impl;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$6;->val$callback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-static {v0, p0}, Lcom/transsion/camera/adapter/CameraProxy2Impl;->access$1402(Lcom/transsion/camera/adapter/CameraProxy2Impl;Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-void
.end method
