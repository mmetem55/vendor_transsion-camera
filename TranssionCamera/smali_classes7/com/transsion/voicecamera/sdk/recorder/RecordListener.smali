.class public abstract Lcom/transsion/voicecamera/sdk/recorder/RecordListener;
.super Ljava/lang/Object;
.source "RecordListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onRecordData([FI)V
.end method

.method public abstract onRecordEnd()V
.end method

.method public abstract onRecordError(I)V
.end method

.method public abstract onRecordStart()V
.end method
