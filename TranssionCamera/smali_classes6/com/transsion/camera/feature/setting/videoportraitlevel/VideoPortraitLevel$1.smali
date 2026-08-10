.class Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel$1;
.super Ljava/lang/Object;
.source "VideoPortraitLevel.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel$1;->this$0:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel$1;->this$0:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->access$000(Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel$1;->this$0:Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoportraitlevel/VideoPortraitLevel;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 0

    return-void
.end method
