.class Lcom/faceunity/pta_art/core/base/BaseCore$9;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$callback:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$9;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$9;->val$callback:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$9;->val$callback:Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$9;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object p0

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;->onEventRun(I)V

    return-void
.end method
