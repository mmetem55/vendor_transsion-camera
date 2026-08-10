.class Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$5;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "FuEngineCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;->onCameraChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore$5;->this$0:Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 193
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    return-void
.end method
