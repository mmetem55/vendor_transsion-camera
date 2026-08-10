.class public interface abstract Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;
.super Ljava/lang/Object;
.source "IBurstPMKCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISpeedListener"
.end annotation


# static fields
.field public static final SPEED_NORMAL:I = 0x1

.field public static final SPEED_TOO_FAST:I = 0x2


# virtual methods
.method public abstract onSpeedUpdate(I)V
.end method
