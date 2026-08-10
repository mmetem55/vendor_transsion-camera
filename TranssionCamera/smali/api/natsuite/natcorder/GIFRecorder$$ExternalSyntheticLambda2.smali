.class public final synthetic Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapi/natsuite/natcorder/GIFRecorder;

.field public final synthetic f$1:Lapi/natsuite/natcorder/MediaRecorder$Callback;


# direct methods
.method public synthetic constructor <init>(Lapi/natsuite/natcorder/GIFRecorder;Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;->f$0:Lapi/natsuite/natcorder/GIFRecorder;

    iput-object p2, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;->f$1:Lapi/natsuite/natcorder/MediaRecorder$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;->f$0:Lapi/natsuite/natcorder/GIFRecorder;

    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda2;->f$1:Lapi/natsuite/natcorder/MediaRecorder$Callback;

    invoke-static {v0, p0}, Lapi/natsuite/natcorder/GIFRecorder;->$r8$lambda$tmiJY2eEX93y7w9k94dy2p6fqvI(Lapi/natsuite/natcorder/GIFRecorder;Lapi/natsuite/natcorder/MediaRecorder$Callback;)V

    return-void
.end method
