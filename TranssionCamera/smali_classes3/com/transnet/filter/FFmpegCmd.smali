.class public Lcom/transnet/filter/FFmpegCmd;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x1

.field private static final b:I

.field private static c:Lcom/transnet/filter/listener/OnHandleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vskit-transcoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/transnet/filter/FFmpegCmd;->handle([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/transnet/filter/listener/OnHandleListener;)Lcom/transnet/filter/listener/OnHandleListener;
    .locals 0

    sput-object p0, Lcom/transnet/filter/FFmpegCmd;->c:Lcom/transnet/filter/listener/OnHandleListener;

    return-object p0
.end method

.method public static a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 2

    sput-object p1, Lcom/transnet/filter/FFmpegCmd;->c:Lcom/transnet/filter/listener/OnHandleListener;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transnet/filter/FFmpegCmd$1;

    invoke-direct {v1, p1, p0}, Lcom/transnet/filter/FFmpegCmd$1;-><init>(Lcom/transnet/filter/listener/OnHandleListener;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a([[Ljava/lang/String;[Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/transnet/filter/FFmpegCmd$2;

    invoke-direct {v1, p2, p0, p1}, Lcom/transnet/filter/FFmpegCmd$2;-><init>(Lcom/transnet/filter/listener/OnHandleListener;[[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static native handle([Ljava/lang/String;)I
.end method

.method private onProgress(II)V
    .locals 0

    sget-object p0, Lcom/transnet/filter/FFmpegCmd;->c:Lcom/transnet/filter/listener/OnHandleListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transnet/filter/listener/OnHandleListener;->onProgress(II)V

    :cond_0
    return-void
.end method
