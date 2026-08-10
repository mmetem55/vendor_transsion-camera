.class Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$2;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "FaceEmojiRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->entryArModeParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$2;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "is_close_dde"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "enter_ar_mode"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    const-string v2, "enable_face_processor"

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v2, "the enter_ar_mode is done"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;

    .line 57
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer$2;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/FaceEmojiRenderer;

    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemsArray()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->key:Ljava/lang/String;

    iget-wide v4, v1, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->value:D

    invoke-static {v2, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    return-void
.end method
