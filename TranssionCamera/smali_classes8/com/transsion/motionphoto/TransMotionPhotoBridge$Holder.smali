.class final Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;
.super Ljava/lang/Object;
.source "TransMotionPhotoBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/motionphoto/TransMotionPhotoBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

.field static final ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

.field static final HANDLER:Landroid/os/Handler;

.field static final WATCHDOG_RUNNABLE:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 77
    new-instance v0, Lcom/transsion/motionphoto/PreviewFrameEncoder;

    const/16 v5, 0x1e

    const v6, 0x5b8d80

    const-wide/16 v1, 0x5dc

    const-wide/16 v3, 0x5dc

    invoke-direct/range {v0 .. v6}, Lcom/transsion/motionphoto/PreviewFrameEncoder;-><init>(JJII)V

    sput-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->ENCODER:Lcom/transsion/motionphoto/PreviewFrameEncoder;

    .line 79
    new-instance v0, Lcom/transsion/motionphoto/AudioFrameEncoder;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/transsion/motionphoto/AudioFrameEncoder;-><init>(JJ)V

    sput-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->AUDIO_ENCODER:Lcom/transsion/motionphoto/AudioFrameEncoder;

    .line 83
    new-instance v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder$1;

    invoke-direct {v0}, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder$1;-><init>()V

    sput-object v0, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->WATCHDOG_RUNNABLE:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MotionPhotoFinalizer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;->HANDLER:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
