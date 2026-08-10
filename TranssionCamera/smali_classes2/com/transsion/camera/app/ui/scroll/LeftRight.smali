.class Lcom/transsion/camera/app/ui/scroll/LeftRight;
.super Lcom/transsion/camera/app/ui/scroll/ScrollMode;
.source "LeftRight.java"


# instance fields
.field private final mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    return-void
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->down(FF)V

    return-void
.end method

.method public pulling(FF)Z
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->pulling(FF)Z

    move-result p0

    return p0
.end method

.method public spreadFinishedImmediate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public startPulling()V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPulling()V

    return-void
.end method

.method public startPushing()V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->startPushing()V

    return-void
.end method

.method public stopPulling()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/LeftRight;->mScrollOperation:Lcom/transsion/camera/app/ui/scroll/IScrollOperation;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation;->stopPulling()Z

    move-result p0

    return p0
.end method
