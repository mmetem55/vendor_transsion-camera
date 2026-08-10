.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferData"
.end annotation


# instance fields
.field mBuffer:Ljava/nio/ByteBuffer;

.field mInfo:Landroid/media/MediaCodec$BufferInfo;

.field mIsEOS:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mBuffer:Ljava/nio/ByteBuffer;

    .line 411
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 412
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;->mIsEOS:Z

    return-void
.end method
