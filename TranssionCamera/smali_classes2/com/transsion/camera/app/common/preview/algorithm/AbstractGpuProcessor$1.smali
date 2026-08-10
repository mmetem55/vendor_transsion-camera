.class Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;
.super Ljava/lang/Object;
.source "AbstractGpuProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;

    iget-object v0, v0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor$1;->this$0:Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->access$000(Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
