.class Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;
.super Ljava/lang/Object;
.source "CommonDualVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSaverListener"
.end annotation


# instance fields
.field private final mFile:Ljava/lang/Object;

.field private final mReason:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Ljava/lang/Object;I)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    .line 660
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->mReason:I

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->access$000(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] + uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->mFile:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->access$100(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Landroid/net/Uri;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :catch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    if-eqz v0, :cond_0

    .line 673
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->access$200(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->sendNotification(Landroid/content/Context;)V

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    .line 678
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->mReason:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 679
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    .line 681
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[onFileSaved] -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
