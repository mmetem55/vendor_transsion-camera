.class public Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;
.super Ljava/lang/Object;
.source "GLMediaRecorder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderConfig"
.end annotation


# instance fields
.field final fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field final mBitRate:I

.field final mEglContext:Landroid/opengl/EGLContext;

.field final mHeight:I

.field final mIsMuteRecoder:Z

.field final mOrientationHint:I

.field final mWidth:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/mode/VideoFileSpec;IIILandroid/opengl/EGLContext;IZ)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 123
    iput p2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mWidth:I

    .line 124
    iput p3, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mHeight:I

    .line 125
    iput p4, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mBitRate:I

    .line 126
    iput-object p5, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 127
    iput p6, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mOrientationHint:I

    .line 128
    iput-boolean p7, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mIsMuteRecoder:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncoderConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ctxt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
