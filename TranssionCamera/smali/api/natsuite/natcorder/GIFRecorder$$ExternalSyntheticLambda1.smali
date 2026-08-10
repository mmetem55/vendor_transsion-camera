.class public final synthetic Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lapi/natsuite/natcorder/GIFRecorder;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Lapi/natsuite/natcorder/GIFRecorder;IILjava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$0:Lapi/natsuite/natcorder/GIFRecorder;

    iput p2, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$3:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$0:Lapi/natsuite/natcorder/GIFRecorder;

    iget v1, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Lapi/natsuite/natcorder/GIFRecorder$$ExternalSyntheticLambda1;->f$3:Ljava/io/OutputStream;

    invoke-static {v0, v1, v2, p0}, Lapi/natsuite/natcorder/GIFRecorder;->$r8$lambda$eag47poTH_MH9XVGnzNDkfrxZ8o(Lapi/natsuite/natcorder/GIFRecorder;IILjava/io/OutputStream;)V

    return-void
.end method
