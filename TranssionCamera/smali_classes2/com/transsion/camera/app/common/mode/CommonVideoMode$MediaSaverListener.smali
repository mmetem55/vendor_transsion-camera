.class Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;
.super Ljava/lang/Object;
.source "CommonVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFile:Ljava/lang/Object;

.field private final mReason:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    .line 1501
    iput p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mReason:I

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    .line 1506
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TranMemoryFlow] available memory when save video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailMemory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] + uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mVideoScannerConnection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$300(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Landroid/net/Uri;Ljava/lang/Object;)V

    .line 1510
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->access$200(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Landroid/media/MediaScannerConnection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-boolean v0, p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->sendNotification(Landroid/content/Context;)V

    .line 1516
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    .line 1517
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->mReason:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1518
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    .line 1520
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
