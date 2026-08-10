.class Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;
.super Ljava/lang/Object;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 6

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 815
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    const/16 v2, 0x200

    .line 818
    :try_start_0
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 820
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    .line 822
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "0"

    const-string v5, "key_funvideo_duration"

    if-eqz v1, :cond_2

    .line 825
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J

    move-result-wide v3

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    .line 827
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 829
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 830
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 833
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z

    .line 835
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 836
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    .line 837
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->sendNotification(Landroid/content/Context;)V

    .line 838
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v3, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->funRecordEvent(ZI)V

    return-void

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 843
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->funRecordEvent(ZI)V

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->sharedToOther(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2

    .line 845
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 846
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->funRecordEvent(ZI)V

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$2000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v3}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->sharedToOther(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_2

    .line 849
    :cond_5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->funRecordEvent(ZI)V

    .line 851
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;->this$0:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->access$1702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I

    return-void
.end method
