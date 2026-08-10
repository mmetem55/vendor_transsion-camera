.class Lcom/faceunity/pta_art/core/AvatarHandle$1;
.super Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;
.source "AvatarHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/AvatarHandle;-><init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/faceunity/pta_art/core/base/FUItemHandler;Ljava/lang/Runnable;Lcom/transsion/camera/feature/arcore/manager/ISoundPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

.field final synthetic val$prepare:Ljava/lang/Runnable;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/AvatarHandle;Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    iput-wide p3, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->val$start:J

    iput-object p5, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->val$prepare:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/FUItemHandler$LoadFUItemListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Lcom/faceunity/pta_art/core/base/FUItem;)V
    .locals 6

    .line 55
    invoke-static {}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load controller_cpp cost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    iget p1, p1, Lcom/faceunity/pta_art/core/base/FUItem;->handle:I

    invoke-static {v0, p1}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$102(Lcom/faceunity/pta_art/core/AvatarHandle;I)I

    .line 57
    iget-object p1, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->val$prepare:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/faceunity/pta_art/core/AvatarHandle$1;->this$0:Lcom/faceunity/pta_art/core/AvatarHandle;

    invoke-static {p0}, Lcom/faceunity/pta_art/core/AvatarHandle;->access$200(Lcom/faceunity/pta_art/core/AvatarHandle;)Lcom/faceunity/pta_art/core/base/BaseCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->setParam()V

    return-void
.end method
