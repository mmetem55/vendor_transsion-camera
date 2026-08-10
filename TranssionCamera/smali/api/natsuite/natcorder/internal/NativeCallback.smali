.class final Lapi/natsuite/natcorder/internal/NativeCallback;
.super Ljava/lang/Object;
.source "NativeCallback.java"

# interfaces
.implements Lapi/natsuite/natcorder/MediaRecorder$Callback;


# instance fields
.field private final callback:J

.field private final context:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lapi/natsuite/natcorder/internal/NativeCallback;->callback:J

    .line 19
    iput-wide p3, p0, Lapi/natsuite/natcorder/internal/NativeCallback;->context:J

    return-void
.end method

.method private native onRecording(JJLjava/lang/String;)V
.end method


# virtual methods
.method public onRecording(Ljava/lang/String;)V
    .locals 6

    .line 24
    iget-wide v1, p0, Lapi/natsuite/natcorder/internal/NativeCallback;->callback:J

    iget-wide v3, p0, Lapi/natsuite/natcorder/internal/NativeCallback;->context:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lapi/natsuite/natcorder/internal/NativeCallback;->onRecording(JJLjava/lang/String;)V

    return-void
.end method
