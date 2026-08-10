.class Lcom/faceunity/pta_art/core/base/BaseCore$4;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->doResetAction(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/util/List;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$4;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$4;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x1

    .line 356
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 358
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$4;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$4;->val$list:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$300(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/util/List;)V

    .line 359
    invoke-static {}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$400()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "fuItemSetParam2"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
