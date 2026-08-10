.class Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAndSettingStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity$1;)V
    .locals 0

    .line 1238
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V
    .locals 4

    .line 1241
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1802(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/common/IApp$State;)Lcom/transsion/camera/app/common/IApp$State;

    .line 1242
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1800(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v2, v2, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1243
    sget-object v0, Lcom/transsion/camera/app/BaseCameraActivity$5;->$SwitchMap$com$transsion$camera$app$common$IApp$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1274
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->access$800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1800(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2100(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    goto/16 :goto_0

    .line 1255
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v3, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v3, :cond_3

    .line 1256
    invoke-static {p1, v2}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1900(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 1257
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result p1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    .line 1258
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentBrightness()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 1259
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1260
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    .line 1261
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getInitialBrightness()F

    move-result v2

    .line 1260
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenBrightness(Landroid/app/Activity;F)V

    .line 1263
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1264
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1265
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1266
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2002(Lcom/transsion/camera/app/BaseCameraActivity;Z)Z

    .line 1268
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$2100(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    goto :goto_0

    .line 1245
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v2, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v2, :cond_5

    .line 1246
    invoke-static {p1, v1}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1900(Lcom/transsion/camera/app/BaseCameraActivity;Z)V

    .line 1247
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->modeSupportPowerSavingMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingModeSupport:Z

    if-eqz p1, :cond_5

    .line 1249
    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->access$1600(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void
.end method
