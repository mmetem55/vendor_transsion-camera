.class Lcom/faceunity/pta_art/core/base/BaseCore$2;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/pta_art/core/base/BaseCore;->startVideoRecorder(IILcom/transsion/camera/app/common/mode/VideoFileSpec;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

.field final synthetic val$fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field final synthetic val$height:I

.field final synthetic val$orientation:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/app/common/mode/VideoFileSpec;III)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    iput-object p2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iput p3, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$width:I

    iput p4, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$height:I

    iput p5, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 113
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-static {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$000(Lcom/faceunity/pta_art/core/base/BaseCore;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    move-result-object v0

    new-instance v9, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;

    iget-object v2, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget v3, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$width:I

    iget v4, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$height:I

    .line 115
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v6

    iget v7, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->val$orientation:I

    const v5, 0x3567e0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;-><init>(Lcom/transsion/camera/app/common/mode/VideoFileSpec;IIILandroid/opengl/EGLContext;IZ)V

    .line 113
    invoke-virtual {v0, v9}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->startRecording(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V

    .line 117
    iget-object v0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$102(Lcom/faceunity/pta_art/core/base/BaseCore;J)J

    .line 118
    iget-object p0, p0, Lcom/faceunity/pta_art/core/base/BaseCore$2;->this$0:Lcom/faceunity/pta_art/core/base/BaseCore;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->access$202(Lcom/faceunity/pta_art/core/base/BaseCore;Z)Z

    return-void
.end method
