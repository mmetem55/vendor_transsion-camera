.class Lcom/faceunity/pta_art/core/base/BaseCore$3;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->stopVideoRecorder(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/Runnable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$200(Lcom/faceunity/pta_art/core/base/BaseCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$000(Lcom/faceunity/pta_art/core/base/BaseCore;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->stopRecording(Ljava/lang/Runnable;)V

    .line 129
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$3;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$202(Lcom/faceunity/pta_art/core/base/BaseCore;Z)Z

    :cond_0
    return-void
.end method
