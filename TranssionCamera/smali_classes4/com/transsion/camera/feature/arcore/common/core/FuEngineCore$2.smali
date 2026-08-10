.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$2;
.super Ljava/lang/Object;
.source "FuEngineCore.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/common/preview/IResourceCallbacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;
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

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$2;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceDestory()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$2;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->access$100(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;)Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->resourceDestory()V

    return-void
.end method
