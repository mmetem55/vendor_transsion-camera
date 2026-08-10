.class Lcom/transsion/camera/feature/mode/movie/MovieMode$1;
.super Ljava/lang/Object;
.source "MovieMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/MovieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/MovieMode;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateThumbnail(Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$900(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getMoviePath()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$1000(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$1100(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 322
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$1200(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$000(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$100(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$200(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$300(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    if-nez p1, :cond_1

    .line 296
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$400(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "movie save failed!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->updateThumbnail(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$500(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {p1, v2}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$602(Lcom/transsion/camera/feature/mode/movie/MovieMode;I)I

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$700(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->saveMovieNotification(Landroid/content/Context;)V

    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$600(Lcom/transsion/camera/feature/mode/movie/MovieMode;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$800(Lcom/transsion/camera/feature/mode/movie/MovieMode;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/movie/MovieHelper;->shareMovie(Landroid/content/Context;Landroid/net/Uri;)V

    .line 314
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/MovieMode$1;->this$0:Lcom/transsion/camera/feature/mode/movie/MovieMode;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/mode/movie/MovieMode;->access$602(Lcom/transsion/camera/feature/mode/movie/MovieMode;I)I

    return-void
.end method
