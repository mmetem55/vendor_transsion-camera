.class public interface abstract Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# static fields
.field public static final DURATION_MIN_TO_US:J = 0x3938700L

.field public static final ERROR_STOP_FAIL:I = -0x1


# virtual methods
.method public abstract onDurationOutLimit()V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStopped(I)V
.end method
