.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;
.super Ljava/lang/Object;
.source "CommonPhotoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->saveJpegToFile([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 0

    .line 1739
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$1;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->onFileSavedImpl(Landroid/net/Uri;)V

    return-void
.end method
