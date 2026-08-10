.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onFakePostViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "onFakePostViewData"

    .line 1142
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 1146
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFakePostViewData,mPostViewCallbackNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mIsSupportPostView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1200(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1149
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1100(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1151
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onFakePostViewData,skip, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1156
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v1, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->getScreenShotThumbCropSize(Landroid/content/Context;)I

    move-result v1

    .line 1157
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-interface {v2, v3, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1158
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v2, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CapturePerformance] snapshot for thumbnail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v3, v3, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1160
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1161
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object v4, v4, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v5, "key_mirror"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1162
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v5

    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-static {v0, v5, v1}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    const/16 v2, 0xb

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1300(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;ILandroid/graphics/Bitmap;)I

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView(Landroid/graphics/Bitmap;)V

    .line 1168
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$3;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->access$1400(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;Landroid/graphics/Bitmap;)V

    .line 1169
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    :cond_6
    :goto_2
    return-void
.end method
