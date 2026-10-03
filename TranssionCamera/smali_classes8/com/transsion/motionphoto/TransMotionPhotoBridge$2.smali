.class Lcom/transsion/motionphoto/TransMotionPhotoBridge$2;
.super Ljava/lang/Object;
.source "TransMotionPhotoBridge.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/motionphoto/TransMotionPhotoBridge;->finalizeMotionPhoto(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)I
    .registers 5

    .line 209
    iget-object p1, p1, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 210
    iget-object p1, p2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 211
    cmp-long p1, v0, p1

    if-gez p1, :cond_e

    const/4 p1, -0x1

    goto :goto_13

    :cond_e
    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_13

    :cond_12
    const/4 p1, 0x1

    :goto_13
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 206
    check-cast p1, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    check-cast p2, Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/motionphoto/TransMotionPhotoBridge$2;->compare(Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;)I

    move-result p1

    return p1
.end method
