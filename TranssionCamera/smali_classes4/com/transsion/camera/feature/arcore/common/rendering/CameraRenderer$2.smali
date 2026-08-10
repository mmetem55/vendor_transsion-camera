.class Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$2;
.super Ljava/lang/Object;
.source "CameraRenderer.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/camera/CameraDeviceSessionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$2;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 0

    return-void
.end method

.method public onClosed()V
    .locals 0

    return-void
.end method

.method public onConfigured()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer$2;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;->access$200(Lcom/transsion/camera/feature/arcore/common/rendering/CameraRenderer;)V

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method
