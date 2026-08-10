.class Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;
.super Ljava/lang/Object;
.source "GpuAlgorithmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->onModePaused()V
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

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager$3;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;->access$100(Lcom/transsion/camera/app/common/preview/algorithm/GpuAlgorithmManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;

    .line 86
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/algorithm/IGpuProcessor;->onModePaused()V

    goto :goto_0

    :cond_0
    return-void
.end method
