.class Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;
.super Ljava/lang/Object;
.source "TimeLapseVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFile:Ljava/lang/String;

.field final synthetic this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;Ljava/lang/String;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->mFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 4

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 950
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$5900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 951
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 952
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 953
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->sendNotification(Landroid/content/Context;)V

    .line 955
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p1, 0x80

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->mFile:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6302(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 959
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 961
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v1

    const/16 v2, 0x48

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6302(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 965
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 966
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6302(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 968
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)V

    .line 969
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder$MediaSaverListener;->this$1:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode$TimeLapseRecorder;->this$0:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;->access$6700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
