.class Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;
.super Ljava/lang/Object;
.source "PictureSize.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/picturesize/PictureSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureQualityChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;Lcom/transsion/camera/feature/setting/picturesize/PictureSize$1;)V
    .locals 0

    .line 404
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;-><init>(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 408
    invoke-static {}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mISRestoring="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$400(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p2, "key_picture_quality"

    .line 409
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$400(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->access$600(Lcom/transsion/camera/feature/setting/picturesize/PictureSize;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/picturesize/PictureSize$PictureQualityChangeListener;->this$0:Lcom/transsion/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
