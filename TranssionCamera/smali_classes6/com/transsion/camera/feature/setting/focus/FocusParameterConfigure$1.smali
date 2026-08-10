.class Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraAutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public laserFocusSupport()Z
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$000(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/Focus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->laserFocusSupport()Z

    move-result p0

    return p0
.end method

.method public onAutoFocusMoving(Z)V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$200(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$400(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onAutoFocusMoving] start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_1

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "PASSIVE_SCAN"

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "PASSIVE_FOCUSED"

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    .line 284
    :goto_0
    monitor-exit v0

    return-void

    .line 273
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAutoFocusMoving] mFocusStateListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    .line 274
    invoke-static {v2}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/transsion/camera/feature/setting/focus/IFocusController$FocusStateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mDisableUpdateFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    .line 275
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$400(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 273
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onLaserFocused(Z)V
    .locals 2

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "LASER_SCAN"

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;

    const-string p1, "LASER_FOCUSEND"

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/focus/FocusParameterConfigure;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
