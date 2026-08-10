.class Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1016
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 8

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070726

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1021
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1400(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/net/Uri;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1500(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v5

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/BaseCameraActivity;->gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onThumbnailClicked,isProcessing is true,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1030
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1400(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/net/Uri;

    move-result-object v3

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1500(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/BaseCameraActivity;->gotoGallery(Landroid/net/Uri;Ljava/lang/String;ZLandroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 1036
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/BaseCameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    return-void
.end method
