.class Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;
.super Ljava/lang/Object;
.source "ARCoreReviewFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceHolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged surface:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", width:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 228
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreReviewFragment;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
