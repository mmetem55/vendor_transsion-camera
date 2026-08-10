.class public Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;
.super Landroid/database/ContentObserver;
.source "BackgroundImagesObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;
    }
.end annotation


# instance fields
.field private mChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

.field private mEnabled:Z

.field private mLastTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mLastTime:J

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 28
    iget-boolean p1, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    if-eqz p1, :cond_0

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mLastTime:J

    sub-long v2, v0, v2

    .line 31
    iput-wide v0, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mLastTime:J

    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;->onChange()V

    :cond_0
    return-void
.end method

.method public setChangeListener(Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mChangeListener:Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mEnabled:Z

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver;->mLastTime:J

    return-void
.end method
