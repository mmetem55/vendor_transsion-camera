.class Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->handleStopRecordingCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1025
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 1026
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v5}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2800(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2702(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;J)J

    .line 1028
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x19000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto/16 :goto_3

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v1

    .line 1032
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentModuleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1033
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getCameraId()Ljava/lang/String;

    move-result-object v5

    .line 1034
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getCameraSurfaceSize()Ljava/lang/String;

    move-result-object v9

    const-string v2, ""

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 1035
    invoke-virtual {v1, v3}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionFile(Z)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1036
    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v2

    .line 1037
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v11, v1, v2

    .line 1038
    new-instance v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    .line 1039
    invoke-static {v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1040
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->ar3xRecord(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;)V

    .line 1041
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1042
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V

    goto :goto_2

    .line 1044
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3302(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)Z

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$2600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V

    .line 1047
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;->this$0:Lcom/transsion/camera/feature/arcore/manager/ModuleManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->access$3500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    :cond_4
    :goto_3
    return-void
.end method
