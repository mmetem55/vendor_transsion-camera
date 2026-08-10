.class Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;
.super Ljava/lang/Object;
.source "CameraProxy2Impl.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 2729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2730
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 2735
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
