.class public Lcom/transsion/voicecamera/sdk/vad/VADNative;
.super Ljava/lang/Object;
.source "VADNative.java"


# static fields
.field public static vadPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native vad_free(J)I
.end method

.method public static native vad_init(JILjava/lang/String;)I
.end method

.method public static native vad_process(JI[F)[I
.end method
