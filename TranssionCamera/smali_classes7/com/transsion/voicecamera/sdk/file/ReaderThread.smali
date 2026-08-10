.class public abstract Lcom/transsion/voicecamera/sdk/file/ReaderThread;
.super Ljava/lang/Thread;
.source "ReaderThread.java"


# static fields
.field protected static final BUFFER_FLOAT_SIZE:I = 0x460

.field protected static final BUFFER_TIME:I = 0x14


# instance fields
.field protected mSourceFile:Ljava/io/File;

.field protected pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract deInit()V
.end method

.method public abstract init()V
.end method

.method public setPcmReaderListener(Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    return-void
.end method
