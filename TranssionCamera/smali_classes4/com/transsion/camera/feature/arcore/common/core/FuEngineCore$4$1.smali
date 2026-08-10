.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v4

    invoke-static {v2, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 109
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$900(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v4}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v4

    aget v4, v4, v3

    const/4 v5, 0x1

    aput v4, v2, v5

    .line 110
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lily bind configItems controller handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object v5, v5, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v5}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$900(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",config handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;->this$1:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object p0

    aget p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ";spend : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
