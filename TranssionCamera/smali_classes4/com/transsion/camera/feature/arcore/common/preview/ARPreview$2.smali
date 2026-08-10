.class Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;
.super Ljava/lang/Object;
.source "ARPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->moduleChange(Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

.field final synthetic val$newRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

.field final synthetic val$oldRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->val$newRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->val$oldRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->val$newRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->val$oldRenderer:Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;

    invoke-static {v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$600(Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V

    .line 208
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleModuleChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview$2;->this$0:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    return-void
.end method
