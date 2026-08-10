.class Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;
.super Ljava/lang/Object;
.source "CameraOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->chooseOptimalSurfaceSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field final synthetic val$notifySize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Landroid/util/Size;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;->val$notifySize:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;->this$0:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->access$1900(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;)Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$4;->val$notifySize:Landroid/util/Size;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;->onSizeChanged(Landroid/util/Size;)V

    return-void
.end method
