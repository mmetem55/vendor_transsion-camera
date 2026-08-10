.class public abstract Lathena/i;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lathena/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Message;J)V
.end method

.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
.end method

.method public c()V
    .locals 0

    return-void
.end method
