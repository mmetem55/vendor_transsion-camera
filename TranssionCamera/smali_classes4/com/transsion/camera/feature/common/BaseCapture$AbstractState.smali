.class abstract Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.super Ljava/lang/Object;
.source "BaseCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected captureFail()V
    .locals 3

    .line 418
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureFail at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected captureSuccess()V
    .locals 3

    .line 426
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureSuccess at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected createStream()V
    .locals 3

    .line 393
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStream at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected destroyStream()V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$800(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method final entry()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$700(Lcom/transsion/camera/feature/common/BaseCapture;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v3}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1}, Lcom/transsion/camera/feature/common/BaseCapture;->access$000(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onLeave()V

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v1, p0}, Lcom/transsion/camera/feature/common/BaseCapture;->access$002(Lcom/transsion/camera/feature/common/BaseCapture;Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    .line 379
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->onEntry()V

    .line 381
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onAeLocked()V
    .locals 0

    return-void
.end method

.method protected onEntry()V
    .locals 0

    return-void
.end method

.method protected onLeave()V
    .locals 0

    return-void
.end method

.method protected onStreamAvailable()V
    .locals 3

    .line 397
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStreamAvailable at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected shouldEmitData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected shutterClick()V
    .locals 3

    .line 401
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterClick at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected startSaving()V
    .locals 3

    .line 422
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSaving at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected stopCapture()Z
    .locals 3

    .line 413
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture at illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
