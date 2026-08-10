.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->initControllerAndConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 95
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    iget-object v1, v1, Lcom/faceunity/pta_art/core/base/BaseCore;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/utils/FileUtil;->readFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v1

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 100
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lily initControllerAndConfig controller handle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$900(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",config handle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v3}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1000(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)[I

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$1100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    iget-object v0, v0, Lcom/faceunity/pta_art/core/base/BaseCore;->mIGLRequester:Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4$1;-><init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$4;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
