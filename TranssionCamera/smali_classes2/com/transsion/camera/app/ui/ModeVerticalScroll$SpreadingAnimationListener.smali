.class final Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;
.super Ljava/lang/Object;
.source "ModeVerticalScroll.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpreadingAnimationListener"
.end annotation


# instance fields
.field private mAnimationListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

.field private mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;->mAnimationListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    .line 492
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;->mPanelStateListener:Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadEnd()V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SpreadingAnimationListener;->mAnimationListener:Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;->onAnimationEnd()V

    return-void
.end method
