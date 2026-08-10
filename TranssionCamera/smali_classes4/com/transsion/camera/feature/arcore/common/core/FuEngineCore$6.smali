.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->setAvatar(Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

.field final synthetic val$info:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->val$info:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1200(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1202(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Z)Z

    .line 276
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvatar mDrawNotReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1200(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$6;->val$info:Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;->completeListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    .line 278
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
