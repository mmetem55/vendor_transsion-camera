.class Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;
.super Ljava/lang/Object;
.source "TransMotionPhotoBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/motionphoto/TransMotionPhotoBridge;->onJpegFileSaved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audioEnc:Lcom/transsion/motionphoto/AudioFrameEncoder;

.field final synthetic val$captureRotation:I

.field final synthetic val$centerTs:J

.field final synthetic val$enc:Lcom/transsion/motionphoto/PreviewFrameEncoder;

.field final synthetic val$jpegPath:Ljava/lang/String;

.field final synthetic val$retainKey:J


# direct methods
.method constructor <init>(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$enc:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    iput-object p2, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$audioEnc:Lcom/transsion/motionphoto/AudioFrameEncoder;

    iput-object p3, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$jpegPath:Ljava/lang/String;

    iput-wide p4, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$centerTs:J

    iput p6, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$captureRotation:I

    iput-wide p7, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$retainKey:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$enc:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    iget-object v1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$audioEnc:Lcom/transsion/motionphoto/AudioFrameEncoder;

    iget-object v2, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$jpegPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$centerTs:J

    iget v5, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$captureRotation:I

    # invokes: Lcom/transsion/motionphoto/TransMotionPhotoBridge;->finalizeMotionPhoto(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V
    invoke-static/range {v0 .. v5}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->access$000(Lcom/transsion/motionphoto/PreviewFrameEncoder;Lcom/transsion/motionphoto/AudioFrameEncoder;Ljava/lang/String;JI)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_16

    .line 179
    :catchall_e
    move-exception v0

    .line 180
    :try_start_f
    const-string v1, "TransMotionPhotoBridge"

    const-string v2, "finalize failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_26

    .line 182
    :goto_16
    iget-object v0, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$enc:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    iget-wide v1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$retainKey:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseRetention(J)V

    .line 183
    iget-object v0, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$audioEnc:Lcom/transsion/motionphoto/AudioFrameEncoder;

    iget-wide v1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$retainKey:J

    invoke-virtual {v0, v1, v2}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseRetention(J)V

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$enc:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    iget-wide v2, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$retainKey:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseRetention(J)V

    .line 183
    iget-object v1, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$audioEnc:Lcom/transsion/motionphoto/AudioFrameEncoder;

    iget-wide v2, p0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$1;->val$retainKey:J

    invoke-virtual {v1, v2, v3}, Lcom/transsion/motionphoto/AudioFrameEncoder;->releaseRetention(J)V

    .line 184
    throw v0
.end method
