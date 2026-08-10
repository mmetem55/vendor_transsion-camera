.class Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/picturesize/PictureSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 415
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_restore_settings_notify_ui"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "begin"

    .line 419
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$2;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$402(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Z)Z

    :cond_0
    return-void
.end method
