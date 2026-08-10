.class public Lcom/faceunity/pta_art/core/base/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# instance fields
.field public final taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/faceunity/pta_art/core/base/Task;->taskName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
