.class public final Lcom/google/vr/dynamite/client/d;
.super Ljava/lang/Exception;
.source "LoaderException.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/vr/dynamite/client/d;->a:I

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/vr/dynamite/client/d;->a:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown error"

    goto :goto_0

    :cond_0
    const-string p0, "Package not available"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoaderException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
