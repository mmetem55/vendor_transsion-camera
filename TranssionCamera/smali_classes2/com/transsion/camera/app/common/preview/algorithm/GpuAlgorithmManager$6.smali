.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;
.super Ljava/lang/Object;
.source "GpuAlgorithmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onSurfaceDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$100(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 188
    invoke-interface {v1}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onSurfaceDestoryed()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$6;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$200(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)V

    return-void
.end method
