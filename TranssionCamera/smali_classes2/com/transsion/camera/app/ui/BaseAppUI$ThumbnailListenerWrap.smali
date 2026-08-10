.class Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;
.super Ljava/lang/Object;
.source "BaseAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailListenerWrap"
.end annotation


# instance fields
.field private final mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    .line 638
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked(Landroid/view/View;)V

    return-void
.end method

.method public onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    return-void
.end method
