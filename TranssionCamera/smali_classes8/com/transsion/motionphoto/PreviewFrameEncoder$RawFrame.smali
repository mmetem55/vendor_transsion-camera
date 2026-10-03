.class final Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;
.super Ljava/lang/Object;
.source "PreviewFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/motionphoto/PreviewFrameEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawFrame"
.end annotation


# instance fields
.field final height:I

.field final nv12:[B

.field final timestampUs:J

.field final width:I


# direct methods
.method constructor <init>([BIIJ)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->nv12:[B

    .line 39
    iput p2, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->width:I

    .line 40
    iput p3, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->height:I

    .line 41
    iput-wide p4, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->timestampUs:J

    .line 42
    return-void
.end method
