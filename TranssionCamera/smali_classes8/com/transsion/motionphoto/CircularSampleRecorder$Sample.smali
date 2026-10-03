.class public final Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;
.super Ljava/lang/Object;
.source "CircularSampleRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/motionphoto/CircularSampleRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sample"
.end annotation


# instance fields
.field public final data:[B

.field public final info:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method constructor <init>([BLandroid/media/MediaCodec$BufferInfo;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->data:[B

    .line 25
    iput-object p2, p0, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 26
    return-void
.end method
