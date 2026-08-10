.class Lcom/transsion/camera/feature/mode/video/VideoMode$6;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/video/VideoMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/VideoMode;)V
    .locals 0

    .line 1057
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$6;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$6;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/video/VideoMode;->access$3602(Lcom/transsion/camera/feature/mode/video/VideoMode;Z)Z

    .line 1061
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/VideoMode$6;->this$0:Lcom/transsion/camera/feature/mode/video/VideoMode;

    invoke-virtual {p0, p1, v1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    return-void
.end method
