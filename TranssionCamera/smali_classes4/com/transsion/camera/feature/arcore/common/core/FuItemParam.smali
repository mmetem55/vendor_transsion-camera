.class public Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;
.super Ljava/lang/Object;
.source "FuItemParam.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->key:Ljava/lang/String;

    .line 11
    iput-wide p2, p0, Lcom/transsion/camera/feature/arcore/common/core/FuItemParam;->value:D

    return-void
.end method
