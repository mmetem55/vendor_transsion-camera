.class Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder$1;
.super Ljava/lang/Object;
.source "TransMotionPhotoBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/motionphoto/TransMotionPhotoBridge$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 86
    const-string v0, "TransMotionPhotoBridge"

    const-string v1, "Preview broadcast stopped; microphone and encoders are being turned off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/transsion/motionphoto/TransMotionPhotoBridge;->stopEncoders()V

    .line 88
    return-void
.end method
